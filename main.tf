provider "aws" {
}

resource "aws_iam_saml_provider" "this" {
  count = var.create_saml_provider ? 1 : 0

  name                   = var.saml_provider_name
  saml_metadata_document = var.saml_provider_metadata
}
