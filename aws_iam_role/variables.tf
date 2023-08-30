variable "config" {
  description = "(Required) Module configuration"
  type = object({
    name        = optional(string),
    name_prefix = optional(string),
    path        = optional(string),
    description = optional(string),
    assume_role_policy = optional(object({
      Version = optional(string),
      #? (list(object)) This cannot be confined to allow all possible schemas supported by AWS
      Statement = optional(any)
    })),
    force_detach_policies = optional(string),
    max_session_duration  = optional(string),
    permissions_boundary  = optional(string),
    tags                  = optional(map(string)),
    managed_policy_arns   = optional(list(string)),
    inline_policy = optional(object({
      name   = optional(string),
      policy = optional(string)
    }))
  })
}

variable "module_depends_on" {
  description = "(Optional) A list of external resources the module depends_on."
  type        = any
  default     = []
}

variable "aws_iam_policy" {
  description = "(Optional) See [aws_iam_policy](../aws_iam_policy/README.md) module for possible arguments."
  type        = any
  default     = []
}