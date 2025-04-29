# terraform-aws-tardigrade-iam-identity-provider

Terraform module to create an IAM SAML provider, OIDC Connect provider, or both.

## Testing

Manual testing:

```
# Replace "xxx" with an actual AWS profile, then execute the integration tests.
export AWS_PROFILE=xxx 
make terraform/pytest PYTEST_ARGS="-v --nomock"
```

For automated testing, PYTEST_ARGS is optional and no profile is needed:

```
make mockstack/up
make terraform/pytest PYTEST_ARGS="-v"
make mockstack/clean
```

<!-- BEGIN TFDOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_saml_provider_name"></a> [saml\_provider\_name](#input\_saml\_provider\_name) | Name of the SAML Identity Provider | `string` | n/a | yes |
| <a name="input_saml_provider_metadata"></a> [saml\_provider\_metadata](#input\_saml\_provider\_metadata) | XML metadata for the SAML Identity Provider | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_saml_identity_provider_arn"></a> [saml\_identity\_provider\_arn](#output\_saml\_identity\_provider\_arn) | ARN of the SAML Identity Provider |

<!-- END TFDOCS -->
