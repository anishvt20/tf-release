resource "aws_iam_saml_provider" "this" {
  name                   = local.name
  saml_metadata_document = local.saml_metadata_document
  tags                   = local.tags

  depends_on = [
    var.module_depends_on
  ]
}