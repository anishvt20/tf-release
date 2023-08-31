output "config" {
  description = "Module Configuration"
  value = {
    description = local.description
    name        = local.name
    name_prefix = local.name_prefix
    path        = local.path
    policy      = local.policy
    tags        = local.tags
  }
}

output "name" {
  value = try(aws_iam_policy.this.name, null)
}

output "id" {
  value = try(aws_iam_policy.this.id, null)
}

output "arn" {
  value = try(aws_iam_policy.this.arn, null)
}

output "this" {
  description = "This module's main resource: `aws_iam_policy.this`"
  value       = aws_iam_policy.this
  sensitive   = true
}