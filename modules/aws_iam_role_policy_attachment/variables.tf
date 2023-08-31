variable "config" {
  description = "(Required) Module configuration"
  type = object({
    # The name of the IAM role to which the policy should be applied
    role = string,

    # The ARN of the policy you want to apply
    policy_arn = string
  })
}

variable "module_depends_on" {
  description = "(Optional) A list of external resources the module depends_on."
  type        = any
  default     = []
}
