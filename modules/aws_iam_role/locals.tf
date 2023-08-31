locals {
  name                  = try(coalesce(var.config.name), null)
  name_prefix           = try(coalesce(var.config.name_prefix), null)
  path                  = try(coalesce(var.config.path), null)
  description           = try(coalesce(var.config.description), null)
  assume_role_policy    = jsonencode(try(coalesce(var.config.assume_role_policy), {}))
  force_detach_policies = try(coalesce(var.config.force_detach_policies), false)
  max_session_duration  = try(coalesce(var.config.max_session_duration), 3600)
  permissions_boundary  = try(coalesce(var.config.permissions_boundary), null)
  tags                  = try(coalesce(var.config.tags), {})
  managed_policy_arns   = try(coalesce(var.config.managed_policy_arns), [])
  inline_policy = [
    for config in flatten([try(coalesce(var.config.inline_policy), [{}])]) : {
      name   = try(coalesce(config.name), null)
      policy = try(coalesce(config.policy), null)
    }
  ]



  aws_iam_policy_unique_topics = ["name", "name_prefix"]
  aws_iam_policy = {
    for policy in flatten([try(coalesce(var.aws_iam_policy), [])]) :
    join("-", compact([for topic in local.aws_iam_policy_unique_topics : lookup(policy.config, topic, "")])) => {
      config            = try(policy.config, null)
      module_depends_on = try(policy.module_depends_on, null)
    }
  }
}
