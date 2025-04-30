variable "iam_identity_provider" {
  description = "Inputs to create a SAML Provider or OpenID Provider"
  type = object({
    saml = optional(object({
      metadata_document = string
      provider_name     = string
    }))
    openid_connect = optional(object({
      client_id_list  = list(string)
      thumbprint_list = optional(list(string), [])
      url             = string
    }))
  })
  validation {
    condition = (
      (var.iam_identity_provider.saml != null && var.iam_identity_provider.openid_connect == null) ||
      (var.iam_identity_provider.saml == null && var.iam_identity_provider.openid_connect != null)
    )
    error_message = "You must specify *either* 'saml' or 'openid_connect', but not both or neither."
  }
}
