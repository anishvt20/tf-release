resource "aws_iam_role_policy_attachment" "this" {
  role       = local.role
  policy_arn = local.policy_arn

  depends_on = [
    var.module_depends_on
  ]
}