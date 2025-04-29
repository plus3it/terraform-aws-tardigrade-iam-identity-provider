output "openid_identity_provider_arn" {
  description = "ARN of the OpenID Connect Identity Provider"
  value       = try(aws_iam_openid_connect_provider.this[0].arn, null)
}

output "saml_identity_provider_arn" {
  description = "ARN of the SAML Identity Provider"
  value       = try(aws_iam_saml_provider.this[0].arn, null)
}

output "saml_identity_provider_valid_until" {
  description = "The expiration date and time for the SAML provider in RFC1123 format"
  value       = try(aws_iam_saml_provider.this[0].valid_until, null)
}
