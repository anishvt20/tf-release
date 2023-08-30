resource "aws_iam_role" "this" {
  name                  = local.name
  name_prefix           = local.name_prefix
  path                  = local.path
  description           = local.description
  assume_role_policy    = local.assume_role_policy
  force_detach_policies = local.force_detach_policies
  max_session_duration  = local.max_session_duration
  permissions_boundary  = local.permissions_boundary
  tags                  = local.tags
  managed_policy_arns   = local.managed_policy_arns

  dynamic "inline_policy" {
    for_each = local.inline_policy
    content {
      name   = inline_policy.value.name
      policy = inline_policy.value.policy
    }
  }

  depends_on = [
    var.module_depends_on
  ]
}

module "aws_iam_policy" {
  source   = "../aws_iam_policy"
  for_each = local.aws_iam_policy

  config            = each.value.config
  module_depends_on = concat(coalesce(each.value.module_depends_on, []), var.module_depends_on)
}

resource "aws_iam_role_policy_attachment" "this" {
  for_each = module.aws_iam_policy

  role       = aws_iam_role.this.name
  policy_arn = each.value.arn
}
