locals {
  name        = try(coalesce(var.config.name), null)
  name_prefix = try(coalesce(var.config.name_prefix), null)
  policy      = try(coalesce(var.config.policy), null)
  user        = try(coalesce(var.config.user), null)
}
