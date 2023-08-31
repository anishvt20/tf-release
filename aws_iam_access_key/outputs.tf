output "config" {
  description = "Module Configuration"
  value = {
    user    = local.user
    pgp_key = local.pgp_key
    status  = local.status
  }
}

output "id" {
  value = try(aws_iam_access_key.this.id, null)
}

output "this" {
  description = "This module's main resource: `aws_iam_access_key.this`"
  value       = aws_iam_access_key.this
  sensitive   = true
}