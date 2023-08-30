variable "config" {
  description = "(Required) Module configuration"
  type = object({
    description = optional(string),
    name        = optional(string),
    name_prefix = optional(string),
    path        = optional(string),
    policy      = optional(string),
    tags        = optional(map(string)),
  })
}

variable "module_depends_on" {
  description = "(Optional) A list of external resources the module depends_on."
  type        = any
  default     = []
}