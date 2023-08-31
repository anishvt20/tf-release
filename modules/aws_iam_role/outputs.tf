output "config" {
  description = "Module Configuration"
  value = {
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
    inline_policy         = local.inline_policy
  }
}

output "name" {
  value = try(aws_iam_role.this.name, null)
}

output "id" {
  value = try(aws_iam_role.this.id, null)
}

output "arn" {
  value = try(aws_iam_role.this.arn, null)
}

output "this" {
  description = "This module's main resource: `aws_iam_role.this`"
  value       = aws_iam_role.this
  sensitive   = true
}
