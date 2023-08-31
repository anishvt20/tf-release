<!-- BEGIN_TF_DOCS -->
# Terraform Module

[![semantic-release-badge]][semantic-release]

Terraform Example:

  ```js
  module "aws_iam_role_with_oidc" {
    source = "git::https://github.com/platform/terraform/terraform-aws-iam.git//modules/aws_iam_role_with_oidc?ref=v1.7.3"

    config = {
      [...]
    }
  }
  ```

Terragrunt Example:

[![Maintenance](https://img.shields.io/badge/aws_iam_role_with_oidc-blue.svg)](../../tests/aws\_iam\_role\_with\_oidc)

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
| <a name="module_aws_iam_policy_document"></a> [aws\_iam\_policy\_document](#module\_aws\_iam\_policy\_document) | ../aws_iam_policy_document | n/a |
| <a name="module_aws_iam_role"></a> [aws\_iam\_role](#module\_aws\_iam\_role) | ../aws_iam_role | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/3.65.0/docs/data-sources/caller_identity) | data source |
| [aws_partition.this](https://registry.terraform.io/providers/hashicorp/aws/3.65.0/docs/data-sources/partition) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_iam_role"></a> [aws\_iam\_role](#input\_aws\_iam\_role) | (Optional) See [aws\_iam\_role](../aws\_iam\_role/README.md) module for possible arguments. | `any` | `[]` | no |
| <a name="input_config"></a> [config](#input\_config) | (Required) Module configuration | <pre>object({<br>    # The AWS account ID where the OIDC provider lives, leave empty to use the account for the AWS provider<br>    account_id = optional(string),<br><br>    # URLs of the OIDC Provider.<br>    provider_urls = optional(list(string)),<br><br>    # Fully Qualified OIDC subjects to be added to the role policy<br>    oidc_subjects_fully_qualified = optional(list(string)),<br><br>    # Wildcard OIDC subjects to be added to the role policy<br>    oidc_subjects_with_wildcards = optional(list(string)),<br>  })</pre> | n/a | yes |
| <a name="input_module_depends_on"></a> [module\_depends\_on](#input\_module\_depends\_on) | (Optional) A list of external resources the module depends\_on. | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | aws\_iam\_role.arn |
| <a name="output_config"></a> [config](#output\_config) | Module Configuration |
| <a name="output_id"></a> [id](#output\_id) | aws\_iam\_role.id |
| <a name="output_json"></a> [json](#output\_json) | module.aws\_iam\_policy\_document |
| <a name="output_name"></a> [name](#output\_name) | aws\_iam\_role.name |
| <a name="output_this"></a> [this](#output\_this) | List of resources created by `module.aws_iam_role` |

---
[semantic-release-badge]: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
<!-- END_TF_DOCS -->