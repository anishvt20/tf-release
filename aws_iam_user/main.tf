resource "aws_iam_user" "this" {
  name                 = local.name
  path                 = local.path
  permissions_boundary = local.permissions_boundary
  force_destroy        = local.force_destroy
  tags                 = local.tags

  depends_on = [
    var.module_depends_on
  ]
}

module "aws_iam_user_policy" {
  source   = "../aws_iam_user_policy"
  for_each = local.aws_iam_user_policy

  config            = each.value.config
  module_depends_on = each.value.module_depends_on
}

module "aws_iam_access_key" {
  source   = "../aws_iam_access_key"
  for_each = local.aws_iam_access_key

  config            = each.value.config
  module_depends_on = each.value.module_depends_on
}

module "aws_iam_user_login_profile" {
  source   = "../aws_iam_user_login_profile"
  for_each = local.aws_iam_user_login_profile

  config = merge(
    each.value.config, {
      user = aws_iam_user.this.name
  })
  module_depends_on = concat(coalesce(each.value.module_depends_on, []), var.module_depends_on)
}