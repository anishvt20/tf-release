variable "config" {
  description = "(Required) Module configuration"
  type = object({
    override_json             = optional(string),
    override_policy_documents = optional(list(string)),
    policy_id                 = optional(string),
    source_json               = optional(string),
    source_policy_documents   = optional(list(string)),
    statement = optional(list(object({
      sid         = optional(string),
      effect      = optional(string),
      actions     = optional(list(string)),
      not_actions = optional(list(string)),
      condition = optional(list(object({
        test     = string,
        values   = list(string),
        variable = string
      }))),
      resources     = optional(list(string)),
      not_resources = optional(list(string)),

      principals = optional(list(object({
        type        = string
        identifiers = list(string),
      }))),

      not_principals = optional(list(object({
        identifiers = list(string),
        type        = string
      }))),
    }))),
    version = optional(map(string)),
  })
}

variable "module_depends_on" {
  description = "(Optional) A list of external resources the module depends_on."
  type        = any
  default     = []
}