resource "aws_iam_saml_provider" "this" {
  name                   = var.saml_provider_name
  saml_metadata_document = var.saml_provider_metadata
}
