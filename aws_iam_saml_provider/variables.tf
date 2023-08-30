variable "config" {
  description = "(Required) Module configuration"
  type = object({
    name                   = string,
    saml_metadata_document = any,
    tags                   = optional(map(string)),
  })
}

variable "module_depends_on" {
  description = "(Optional) A list of external resources the module depends_on."
  type        = any
  default     = []
}