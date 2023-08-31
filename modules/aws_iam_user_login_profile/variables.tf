variable "config" {
  description = "(Required) Module configuration"
  type = object({
    user                    = string,
    pgp_key                 = string,
    status                  = optional(string),
    password_length         = optional(string),
    password_reset_required = optional(bool),
  })
}

variable "module_depends_on" {
  description = "(Optional) A list of external resources the module depends_on."
  type        = any
  default     = []
}