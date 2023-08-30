<!-- BEGIN_TF_DOCS -->
# Terraform Module

[![semantic-release-badge]][semantic-release]

Terraform Example:

  ```js
  module "aws_iam_saml_provider" {
    source = "git::https://github.com/platform/terraform/terraform-aws-iam.git//modules/aws_iam_saml_provider?ref=v1.7.3"

    config = {
      [...]
    }
  }
  ```

Terragrunt Example:

[![Maintenance](https://img.shields.io/badge/aws_iam_saml_provider-blue.svg)](../../tests/aws\_iam\_saml\_provider)

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

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_saml_provider.this](https://registry.terraform.io/providers/hashicorp/aws/3.65.0/docs/resources/iam_saml_provider) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config"></a> [config](#input\_config) | (Required) Module configuration | <pre>object({<br>    name                   = string,<br>    saml_metadata_document = any,<br>    tags                   = optional(map(string)),<br>  })</pre> | n/a | yes |
| <a name="input_module_depends_on"></a> [module\_depends\_on](#input\_module\_depends\_on) | (Optional) A list of external resources the module depends\_on. | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_config"></a> [config](#output\_config) | Module Configuration |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_this"></a> [this](#output\_this) | This module's main resource: `aws_iam_saml_provider.this` |

---
[semantic-release-badge]: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
<!-- END_TF_DOCS -->