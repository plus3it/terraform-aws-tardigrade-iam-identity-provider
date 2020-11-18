# terraform-aws-tardigrade-iam-identity-provider

Terraform module to create an IAM SAML provider


<!-- BEGIN TFDOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| saml\_provider\_name | Name of the SAML Identity Provider | `string` | n/a | yes |
| saml\_provider\_metadata | XML metadata for the SAML Identity Provider | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| saml\_identity\_provider\_arn | ARN of the SAML Identity Provider |

<!-- END TFDOCS -->
