locals {
  override_json             = try(coalesce(var.config.override_json), null)
  override_policy_documents = try(coalesce(var.config.override_policy_documents), null)
  policy_id                 = try(coalesce(var.config.policy_id), null)
  source_json               = try(coalesce(var.config.source_json), null)
  source_policy_documents   = try(coalesce(var.config.source_policy_documents), null)
  version                   = try(coalesce(var.config.version), null)

  statement = [
    for config in flatten([try(coalesce(var.config.statement), [])]) : {
      sid           = try(config.sid, null)
      effect        = try(config.effect, null)
      actions       = try(config.actions, null)
      not_actions   = try(config.not_actions, null)
      resources     = try(config.resources, null)
      not_resources = try(config.not_resources, null)

      condition = [
        for item in flatten([try(coalesce(config.condition), [])]) : {
          test     = try(item.test, null)
          values   = try(item.values, null)
          variable = try(item.variable, null)
        }
      ]

      principals = [
        for item in flatten([try(coalesce(config.principals), [])]) : {
          identifiers = try(item.identifiers, null)
          type        = try(item.type, null)
        }
      ]

      not_principals = [
        for item in flatten([try(coalesce(config.not_principals), [])]) : {
          identifiers = try(item.identifiers, null)
          type        = try(item.type, null)
        }
      ]

    }
  ]
}
