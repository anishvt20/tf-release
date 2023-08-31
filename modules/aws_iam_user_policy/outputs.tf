output "config" {
  description = "Module Configuration"
  value = {
    name        = local.name
    name_prefix = local.name_prefix
    policy      = local.policy
    user        = local.user
  }
}

output "id" {
  value = try(aws_iam_user_policy.this.id, null)
}

output "name" {
  value = try(aws_iam_user_policy.this.name, null)
}

output "this" {
  description = "This module's main resource: `aws_iam_user_policy.this`"
  value       = aws_iam_user_policy.this
  sensitive   = true
}