resource "aws_iam_saml_provider" "this" {
  count = var.iam_identity_provider.saml != null ? 1 : 0

  name                   = var.iam_identity_provider.saml.provider_name
  saml_metadata_document = var.iam_identity_provider.saml.metadata_document
}

resource "aws_iam_openid_connect_provider" "this" {
  count = var.iam_identity_provider.openid != null ? 1 : 0

  client_id_list = var.iam_identity_provider.openid.client_id_list
  url            = var.iam_identity_provider.openid.url
}
