locals {
  user                    = try(coalesce(var.config.user), null)
  pgp_key                 = try(coalesce(var.config.pgp_key), null)
  password_length         = try(coalesce(var.config.password_length), null)
  password_reset_required = try(coalesce(var.config.password_reset_required), null)
}