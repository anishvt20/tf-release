output "config" {
  description = "Module Configuration"
  value = {
    name                 = local.name
    path                 = local.path
    permissions_boundary = local.permissions_boundary
    force_destroy        = local.force_destroy
    tags                 = local.tags
  }
}

output "this" {
  description = "This module's main resource: `aws_iam_user.this`"
  value       = try(aws_iam_user.this, {})
  sensitive   = true
}

output "aws_iam_access_key" {
  description = "(Optional) List of `aws_iam_access_key` created"
  value       = [for key in module.aws_iam_access_key : key]
  sensitive   = true
}
