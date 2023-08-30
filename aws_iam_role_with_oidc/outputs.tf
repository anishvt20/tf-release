output "config" {
  description = "Module Configuration"
  value = {
    account_id    = local.account_id
    provider_urls = local.provider_urls

    oidc_subjects_fully_qualified = local.oidc_subjects_fully_qualified
    oidc_subjects_with_wildcards  = local.oidc_subjects_with_wildcards

    aws_iam_policy_document    = local.aws_iam_policy_document
    aws_iam_role_unique_topics = local.aws_iam_role_unique_topics
    aws_iam_role               = local.aws_iam_role
  }
}

output "this" {
  description = "List of resources created by `module.aws_iam_role`"
  value       = [for v in module.aws_iam_role : v.this]
  sensitive   = true
}

output "id" {
  description = "aws_iam_role.id"
  value       = [for v in module.aws_iam_role : v.id][0]
}

output "name" {
  description = "aws_iam_role.name"
  value       = [for v in module.aws_iam_role : v.name][0]
}

output "arn" {
  description = "aws_iam_role.arn"
  value       = [for v in module.aws_iam_role : v.arn][0]
}

output "json" {
  description = "module.aws_iam_policy_document"
  value       = [for policy in module.aws_iam_policy_document : policy.json][0]
}
