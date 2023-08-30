<!-- BEGIN_TF_DOCS -->
# Terraform Module

[![semantic-release-badge]][semantic-release]

Terraform Example:

  ```js
  module "aws_iam_user" {
    source = "git::https://github.com/platform/terraform/terraform-aws-iam.git//modules/aws_iam_user?ref=v1.7.3"

    config = {
      [...]
    }
  }
  ```

Terragrunt Example:

[![Maintenance](https://img.shields.io/badge/aws_iam_user-blue.svg)](../../tests/aws\_iam\_user)

---

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 3.65.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.65.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_iam_access_key"></a> [aws\_iam\_access\_key](#module\_aws\_iam\_access\_key) | ../aws_iam_access_key | n/a |
| <a name="module_aws_iam_user_login_profile"></a> [aws\_iam\_user\_login\_profile](#module\_aws\_iam\_user\_login\_profile) | ../aws_iam_user_login_profile | n/a |
| <a name="module_aws_iam_user_policy"></a> [aws\_iam\_user\_policy](#module\_aws\_iam\_user\_policy) | ../aws_iam_user_policy | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/3.65.0/docs/resources/iam_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_iam_access_key"></a> [aws\_iam\_access\_key](#input\_aws\_iam\_access\_key) | (Optional) See [aws\_iam\_access\_key](../aws\_iam\_access\_key/README.md) module for possible arguments. | `any` | `[]` | no |
| <a name="input_aws_iam_user_login_profile"></a> [aws\_iam\_user\_login\_profile](#input\_aws\_iam\_user\_login\_profile) | (Optional) See [aws\_iam\_user\_login\_profile](../aws\_iam\_user\_login\_profile/README.md) module for possible arguments. | `any` | `[]` | no |
| <a name="input_aws_iam_user_policy"></a> [aws\_iam\_user\_policy](#input\_aws\_iam\_user\_policy) | (Optional) See [aws\_iam\_user\_policy](../aws\_iam\_user\_policy/README.md) module for possible arguments. | `any` | `[]` | no |
| <a name="input_config"></a> [config](#input\_config) | (Required) Module configuration | <pre>object({<br>    name                 = string,<br>    path                 = optional(string),<br>    permissions_boundary = optional(string),<br>    force_destroy        = optional(bool),<br>    tags                 = optional(map(string)),<br>  })</pre> | n/a | yes |
| <a name="input_module_depends_on"></a> [module\_depends\_on](#input\_module\_depends\_on) | (Optional) A list of external resources the module depends\_on. | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_iam_access_key"></a> [aws\_iam\_access\_key](#output\_aws\_iam\_access\_key) | (Optional) List of `aws_iam_access_key` created |
| <a name="output_config"></a> [config](#output\_config) | Module Configuration |
| <a name="output_this"></a> [this](#output\_this) | This module's main resource: `aws_iam_user.this` |

---
[semantic-release-badge]: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
<!-- END_TF_DOCS -->