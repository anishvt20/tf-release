locals {
  user    = try(coalesce(var.config.user), null)
  pgp_key = try(coalesce(var.config.pgp_key), null)
  status  = try(coalesce(var.config.status), null)
}
