variable "iam_identity_provider" {
  description = "Inputs to create a SAML Provider or OpenID Provider"
  type = object({
    saml = optional(object({
      metadata_document = string
      provider_name     = string
      tags              = optional(map(string))
    }))
    oidc = optional(object({
      client_id_list  = list(string)
      tags            = optional(map(string))
      thumbprint_list = optional(list(string))
      url             = string
    }))
  })
  validation {
    condition = anytrue([
      var.iam_identity_provider.saml != null && var.iam_identity_provider.oidc == null,
      var.iam_identity_provider.saml == null && var.iam_identity_provider.oidc != null,
    ])
    error_message = "You must specify *either* 'saml' or 'oidc', but not both or neither."
  }
}
