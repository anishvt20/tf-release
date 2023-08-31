resource "aws_iam_policy" "this" {
  name        = local.name
  name_prefix = local.name_prefix
  path        = local.path
  description = local.description
  policy      = local.policy
  tags        = local.tags

  depends_on = [
    var.module_depends_on
  ]
}
