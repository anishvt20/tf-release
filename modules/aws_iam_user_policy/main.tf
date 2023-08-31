resource "aws_iam_user_policy" "this" {
  name        = local.name
  name_prefix = local.name_prefix
  policy      = local.policy
  user        = local.user

  depends_on = [
    var.module_depends_on
  ]
}
