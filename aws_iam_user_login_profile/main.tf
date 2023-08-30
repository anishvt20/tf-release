resource "aws_iam_user_login_profile" "this" {
  user                    = local.user
  pgp_key                 = local.pgp_key
  password_length         = local.password_length
  password_reset_required = local.password_reset_required

  lifecycle {
    ignore_changes = [
      password_length,
      password_reset_required,
      pgp_key,
    ]
  }

  depends_on = [
    var.module_depends_on
  ]
}
