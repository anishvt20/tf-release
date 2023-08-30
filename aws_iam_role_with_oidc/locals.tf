locals {
  account_id = coalesce(var.config.account_id, data.aws_caller_identity.this.account_id)
  provider_urls = [
    for url in distinct(coalesce(var.config.provider_urls, [])) : replace(url, "https://", "")
  ]

  oidc_subjects_fully_qualified = coalesce(var.config.oidc_subjects_fully_qualified, [])
  oidc_subjects_with_wildcards  = coalesce(var.config.oidc_subjects_with_wildcards, [])

  aws_iam_policy_document = {
    for item in local.provider_urls :
    item => {
      config = {
        statement = [{
          effect  = "Allow"
          actions = ["sts:AssumeRoleWithWebIdentity"]
          principals = [{
            type        = "Federated"
            identifiers = ["arn:${data.aws_partition.this.partition}:iam::${local.account_id}:oidc-provider/${item}"]
          }]
          condition = concat(
            [
              for condition in length(local.oidc_subjects_fully_qualified) > 0 ? local.provider_urls : [] : {
                test     = "StringEquals"
                variable = "${item}:sub"
                values   = local.oidc_subjects_fully_qualified
              }
            ],
            [
              for condition in length(local.oidc_subjects_with_wildcards) > 0 ? local.provider_urls : [] : {
                test     = "StringLike"
                variable = "${item}:sub"
                values   = local.oidc_subjects_with_wildcards
              }
            ]
          )
        }]
      }
    }
  }

  aws_iam_role_unique_topics = ["name", "name_prefix"]
  aws_iam_role = {
    for role in flatten([try(coalesce(var.aws_iam_role), [])]) :
    join("-", compact([for topic in local.aws_iam_role_unique_topics : lookup(role.config, topic, "")])) => {

      #? Deep Level merge for provided aws_iam_role and generated aws_iam_policy_document
      config = merge(
        try(role.config, {}),
        {
          assume_role_policy = {
            Version = try(role.config.assume_role_policy.Version, "2012-10-17")
            Statement = concat(
              try(role.config.assume_role_policy.Statement, []),
              flatten([
                for document in module.aws_iam_policy_document : [
                  for statement in lookup(try(jsondecode(document.json), {}), "Statement", []) : statement
                ]
              ])
            )
          }
        }
      )
      aws_iam_policy    = try(role.aws_iam_policy, null)
      module_depends_on = try(role.module_depends_on, var.module_depends_on)
    }
  }
}
