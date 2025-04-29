resource "aws_iam_saml_provider" "this" {
  name                   = var.saml_provider_name
  saml_metadata_document = var.saml_provider_metadata
}

resource "aws_iam_openid_connect_provider" "this" {
  url            = var.identity_provider.url
  client_id_list = var.identity_provider.client_id_list
}