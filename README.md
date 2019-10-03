# terraform-aws-tardigrade-iam-identity-provider

Terraform module to create an IAM SAML provider

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_saml\_provider | Controls whether to create the SAML Identity Provider | bool | `"true"` | no |
| saml\_provider\_metadata | XML metadata for the SAML Identity Provider | string | `""` | no |
| saml\_provider\_name | Name of the SAML Identity Provider | string | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| saml\_identity\_provider\_arn | ARN of the SAML Identity Provider |

