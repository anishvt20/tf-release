locals {
  name                   = try(coalesce(var.config.name), null)
  saml_metadata_document = sensitive(try(coalesce(var.config.saml_metadata_document), null))
  tags                   = try(coalesce(var.config.tags), {})
}
