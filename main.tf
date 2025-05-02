resource "aws_iam_saml_provider" "this" {
  count = var.iam_identity_provider.saml != null ? 1 : 0

  name                   = var.iam_identity_provider.saml.provider_name
  saml_metadata_document = var.iam_identity_provider.saml.metadata_document
  tags                   = var.iam_identity_provider.saml.tags
}

resource "aws_iam_openid_connect_provider" "this" {
  count = var.iam_identity_provider.oidc != null ? 1 : 0

  client_id_list  = var.iam_identity_provider.oidc.client_id_list
  tags            = var.iam_identity_provider.oidc.tags
  thumbprint_list = var.iam_identity_provider.oidc.thumbprint_list
  url             = var.iam_identity_provider.oidc.url
}
