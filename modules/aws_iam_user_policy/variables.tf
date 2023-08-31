variable "config" {
  description = "(Required) Module configuration"
  type = object({
    name        = optional(string),
    name_prefix = optional(string),
    policy      = string,
    user        = string,
  })
}

variable "module_depends_on" {
  description = "(Optional) A list of external resources the module depends_on."
  type        = any
  default     = []
}