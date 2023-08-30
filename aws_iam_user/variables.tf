variable "config" {
  description = "(Required) Module configuration"
  type = object({
    name                 = string,
    path                 = optional(string),
    permissions_boundary = optional(string),
    force_destroy        = optional(bool),
    tags                 = optional(map(string)),
  })
}

variable "module_depends_on" {
  description = "(Optional) A list of external resources the module depends_on."
  type        = any
  default     = []
}

variable "aws_iam_user_policy" {
  description = "(Optional) See [aws_iam_user_policy](../aws_iam_user_policy/README.md) module for possible arguments."
  type        = any
  default     = []
}

variable "aws_iam_access_key" {
  description = "(Optional) See [aws_iam_access_key](../aws_iam_access_key/README.md) module for possible arguments."
  type        = any
  default     = []
}

variable "aws_iam_user_login_profile" {
  description = "(Optional) See [aws_iam_user_login_profile](../aws_iam_user_login_profile/README.md) module for possible arguments."
  type        = any
  default     = []
}
