output "config" {
  description = "Module Configuration"
  value = {
    user                    = local.user
    pgp_key                 = local.pgp_key
    password_length         = local.password_length
    password_reset_required = local.password_reset_required
  }
}

output "this" {
  description = "This module's main resource: `aws_iam_user_login_profile.this`"
  value       = aws_iam_user_login_profile.this
  sensitive   = true
}