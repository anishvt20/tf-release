output "config" {
  description = "Module Configuration"
  value       = var.config
}

output "json" {
  description = "This module's main resource: `aws_iam_policy_document.this.json`"
  value       = try(data.aws_iam_policy_document.this.json, "")
  # sensitive = true
}

output "this" {
  description = "This module's main resource: `aws_iam_policy_document.this.this`"
  value       = try(data.aws_iam_policy_document.this, {})
  # sensitive = true
}