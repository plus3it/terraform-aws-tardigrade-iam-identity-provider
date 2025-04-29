# terraform-aws-tardigrade-iam-identity-provider

Terraform module to create an IAM SAML provider, OpenID Connect provider, or both. Use the ```create_openid_connect``` and or ```create_saml``` Inputs for selection.

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
| <a name="input_iam_identity_provider"></a> [iam\_identity\_provider](#input\_iam\_identity\_provider) | Inputs to create a SAML Provider or OpenID Provider | <pre>object({<br/>    saml = optional(object({<br/>      metadata_document = string<br/>      provider_name     = string<br/>    }))<br/>    openid = optional(object({<br/>      client_id_list  = list(string)<br/>      thumbprint_list = optional(string)<br/>      url             = string<br/>    }))<br/>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_openid_identity_provider_arn"></a> [openid\_identity\_provider\_arn](#output\_openid\_identity\_provider\_arn) | ARN of the OpenID Connect Identity Provider |
| <a name="output_saml_identity_provider_arn"></a> [saml\_identity\_provider\_arn](#output\_saml\_identity\_provider\_arn) | ARN of the SAML Identity Provider |
| <a name="output_saml_identity_provider_valid_until"></a> [saml\_identity\_provider\_valid\_until](#output\_saml\_identity\_provider\_valid\_until) | The expiration date and time for the SAML provider in RFC1123 format |

<!-- END TFDOCS -->
