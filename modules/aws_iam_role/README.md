<!-- BEGIN_TF_DOCS -->
# Terraform Module

[![semantic-release-badge]][semantic-release]

Terraform Example:

  ```js
  module "aws_iam_role" {
    source = "git::https://github.com/platform/terraform/terraform-aws-iam.git//modules/aws_iam_role?ref=v1.7.3"

    config = {
      [...]
    }
  }
  ```

Terragrunt Example:

[![Maintenance](https://img.shields.io/badge/aws_iam_role-blue.svg)](../../tests/aws\_iam\_role)

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
| <a name="module_aws_iam_policy"></a> [aws\_iam\_policy](#module\_aws\_iam\_policy) | ../aws_iam_policy | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/3.65.0/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/3.65.0/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_iam_policy"></a> [aws\_iam\_policy](#input\_aws\_iam\_policy) | (Optional) See [aws\_iam\_policy](../aws\_iam\_policy/README.md) module for possible arguments. | `any` | `[]` | no |
| <a name="input_config"></a> [config](#input\_config) | (Required) Module configuration | <pre>object({<br>    name        = optional(string),<br>    name_prefix = optional(string),<br>    path        = optional(string),<br>    description = optional(string),<br>    assume_role_policy = optional(object({<br>      Version = optional(string),<br>      #? (list(object)) This cannot be confined to allow all possible schemas supported by AWS<br>      Statement = optional(any)<br>    })),<br>    force_detach_policies = optional(string),<br>    max_session_duration  = optional(string),<br>    permissions_boundary  = optional(string),<br>    tags                  = optional(map(string)),<br>    managed_policy_arns   = optional(list(string)),<br>    inline_policy = optional(object({<br>      name = optional(string),<br>      policy = optional(string)<br>    }))<br>  })</pre> | n/a | yes |
| <a name="input_module_depends_on"></a> [module\_depends\_on](#input\_module\_depends\_on) | (Optional) A list of external resources the module depends\_on. | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_config"></a> [config](#output\_config) | Module Configuration |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_this"></a> [this](#output\_this) | This module's main resource: `aws_iam_role.this` |

---
[semantic-release-badge]: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
<!-- END_TF_DOCS -->