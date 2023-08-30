data "aws_caller_identity" "this" {}

data "aws_partition" "this" {}

module "aws_iam_policy_document" {
  source   = "../aws_iam_policy_document"
  for_each = local.aws_iam_policy_document

  config            = each.value.config
  module_depends_on = var.module_depends_on
}

module "aws_iam_role" {
  source   = "../aws_iam_role"
  for_each = local.aws_iam_role

  config            = each.value.config
  aws_iam_policy    = each.value.aws_iam_policy
  module_depends_on = each.value.module_depends_on
}
