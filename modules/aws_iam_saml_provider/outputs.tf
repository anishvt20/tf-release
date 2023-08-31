output "config" {
  description = "Module Configuration"
  value = {
    name                   = local.name
    saml_metadata_document = local.saml_metadata_document
    tags                   = local.tags
  }
  sensitive = true
}

output "name" {
  value = try(aws_iam_saml_provider.this.name, null)
}

output "arn" {
  value = try(aws_iam_saml_provider.this.arn, null)
}

output "this" {
  description = "This module's main resource: `aws_iam_saml_provider.this`"
  value       = aws_iam_saml_provider.this
  sensitive   = true
}