data "aws_iam_policy_document" "this" {
  override_json             = local.override_json
  override_policy_documents = local.override_policy_documents
  policy_id                 = local.policy_id
  source_json               = local.source_json
  source_policy_documents   = local.source_policy_documents
  version                   = local.version

  dynamic "statement" {
    for_each = local.statement
    content {
      sid           = statement.value.sid
      effect        = statement.value.effect
      actions       = statement.value.actions
      not_actions   = statement.value.not_actions
      resources     = statement.value.resources
      not_resources = statement.value.not_resources

      dynamic "condition" {
        for_each = try(statement.value.condition, [])
        content {
          test     = try(condition.value.test, null)
          values   = try(condition.value.values, null)
          variable = try(condition.value.variable, null)
        }
      }

      dynamic "principals" {
        for_each = try(statement.value.principals, [])
        content {
          identifiers = try(principals.value.identifiers, null)
          type        = try(principals.value.type, null)
        }
      }

      dynamic "not_principals" {
        for_each = try(statement.value.not_principals, [])
        content {
          identifiers = try(not_principals.value.identifiers, null)
          type        = try(not_principals.value.type, null)
        }
      }

    }
  }

  depends_on = [
    var.module_depends_on
  ]
}