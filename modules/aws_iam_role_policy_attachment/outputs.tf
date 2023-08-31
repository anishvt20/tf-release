output "config" {
  value = var.config
}

output "this" {
  value = try(aws_iam_role_policy_attachment.this, {})
  # sensitive = true
}

