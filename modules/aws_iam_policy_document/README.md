<!-- BEGIN_TF_DOCS -->
# Terraform Module

[![semantic-release-badge]][semantic-release]

Terraform Example:

  ```js
  module "aws_iam_policy_document" {
    source = "git::https://github.com/platform/terraform/terraform-aws-iam.git//modules/aws_iam_policy_document?ref=v1.7.3"

    config = {
      [...]
    }
  }
  ```

Terragrunt Example:

[![Maintenance](https://img.shields.io/badge/aws_iam_policy_document-blue.svg)](../../tests/aws\_iam\_policy\_document)

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
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/3.65.0/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config"></a> [config](#input\_config) | (Required) Module configuration | <pre>object({<br>    override_json             = optional(string),<br>    override_policy_documents = optional(list(string)),<br>    policy_id                 = optional(string),<br>    source_json               = optional(string),<br>    source_policy_documents   = optional(list(string)),<br>    statement = optional(list(object({<br>      sid         = optional(string),<br>      effect      = optional(string),<br>      actions     = optional(list(string)),<br>      not_actions = optional(list(string)),<br>      condition = optional(list(object({<br>        test     = string,<br>        values   = list(string),<br>        variable = string<br>      }))),<br>      resources     = optional(list(string)),<br>      not_resources = optional(list(string)),<br><br>      principals = optional(list(object({<br>        type        = string<br>        identifiers = list(string),<br>      }))),<br><br>      not_principals = optional(list(object({<br>        identifiers = list(string),<br>        type        = string<br>      }))),<br>    }))),<br>    version = optional(map(string)),<br>  })</pre> | n/a | yes |
| <a name="input_module_depends_on"></a> [module\_depends\_on](#input\_module\_depends\_on) | (Optional) A list of external resources the module depends\_on. | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_config"></a> [config](#output\_config) | Module Configuration |
| <a name="output_json"></a> [json](#output\_json) | This module's main resource: `aws_iam_policy_document.this.json` |
| <a name="output_this"></a> [this](#output\_this) | This module's main resource: `aws_iam_policy_document.this.this` |

---
[semantic-release-badge]: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
<!-- END_TF_DOCS -->