locals {
  description = try(coalesce(var.config.description), null)
  name        = try(coalesce(var.config.name), null)
  name_prefix = try(coalesce(var.config.name_prefix), null)
  path        = try(coalesce(var.config.path), null)
  policy      = try(coalesce(var.config.policy), null)
  tags        = try(coalesce(var.config.tags), {})
}

