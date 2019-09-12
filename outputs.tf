output "saml_identity_provider_arn" {
  description = "ARN of the SAML Identity Provider"
  value       = join("", aws_iam_saml_provider.this.*.arn)
}

