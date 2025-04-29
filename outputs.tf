output "saml_identity_provider_arn" {
  description = "ARN of the SAML Identity Provider"
  value       = aws_iam_saml_provider.this.arn
}

output "oidc_identity_provider_arn" {
  description = "ARN of the OIDC Identity Provider"
  value       = aws_iam_openid_connect_provider.this.arn
}

