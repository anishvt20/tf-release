variable "config" {
  description = "(Required) Module configuration"
  type = object({
    user    = string,
    pgp_key = optional(string),
    status  = optional(string),
  })
}

variable "module_depends_on" {
  description = "(Optional) A list of external resources the module depends_on."
  type        = any
  default     = []
}