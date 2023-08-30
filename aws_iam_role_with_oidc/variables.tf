variable "config" {
  description = "(Required) Module configuration"
  type = object({
    # The AWS account ID where the OIDC provider lives, leave empty to use the account for the AWS provider
    account_id = optional(string),

    # URLs of the OIDC Provider.
    provider_urls = optional(list(string)),

    # Fully Qualified OIDC subjects to be added to the role policy
    oidc_subjects_fully_qualified = optional(list(string)),

    # Wildcard OIDC subjects to be added to the role policy
    oidc_subjects_with_wildcards = optional(list(string)),
  })
}

variable "module_depends_on" {
  description = "(Optional) A list of external resources the module depends_on."
  type        = any
  default     = []
}

variable "aws_iam_role" {
  description = "(Optional) See [aws_iam_role](../aws_iam_role/README.md) module for possible arguments."
  type        = any
  default     = []
}
