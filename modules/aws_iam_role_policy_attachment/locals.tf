locals {
  role       = try(var.config.role, null)
  policy_arn = try(var.config.policy_arn, null)
}
