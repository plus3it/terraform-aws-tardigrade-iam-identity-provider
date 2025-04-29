resource "aws_iam_saml_provider" "this" {
  name                   = var.saml_provider_name
  saml_metadata_document = var.saml_provider_metadata
}

resource "aws_iam_openid_connect_provider" "this" {
  url            = var.openid_connect.url
  client_id_list = var.openid_connect.client_id_list
}