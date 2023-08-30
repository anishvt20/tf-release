locals {
  name                 = try(coalesce(var.config.name), null)
  path                 = try(coalesce(var.config.path), "/")
  permissions_boundary = try(coalesce(var.config.permissions_boundary), null)
  force_destroy        = try(coalesce(var.config.force_destroy), false)
  tags                 = try(coalesce(var.config.tags), {})

  aws_iam_user_policy_unique_topics = ["name", "name_prefix", "user"]
  aws_iam_user_policy = {
    for item in flatten([try(coalesce(var.aws_iam_user_policy), [])]) :
    join("-", compact([for topic in local.aws_iam_user_policy_unique_topics : lookup(item.config, topic, "")])) => {
      config = merge(
        #? Set defaults
        {
          name = try(item.config.name_prefix, null) == null ? local.name : null
        },
        #? Fetch user provided configuration.
        try(coalesce(item.config), {}),
        #? Configure overrides
        {
          user = aws_iam_user.this.name
        }
      )
      module_depends_on = try(coalesce(item.module_depends_on), var.module_depends_on)
    }
  }

  aws_iam_access_key_unique_topics = ["user"]
  aws_iam_access_key = {
    for item in flatten([try(coalesce(var.aws_iam_access_key), [])]) :
    join("-", compact([for topic in local.aws_iam_access_key_unique_topics : lookup(item.config, topic, "")])) => {
      config = merge(
        try(coalesce(item.config), {}),
        {
          user = aws_iam_user.this.name
        }
      )
      module_depends_on = try(coalesce(item.module_depends_on), var.module_depends_on)
    }
  }

  aws_iam_user_login_profile_unique_topics = ["user"]
  aws_iam_user_login_profile = {
    for item in flatten([try(coalesce(var.aws_iam_user_login_profile), [])]) :
    join("-", compact([for topic in local.aws_iam_user_login_profile_unique_topics : lookup(item.config, topic, "")])) => {
      config = merge(
        try(coalesce(item.config), {}),
        {
          user = aws_iam_user.this.name
        }
      )
      module_depends_on = try(coalesce(item.module_depends_on), var.module_depends_on)
    }
  }
}