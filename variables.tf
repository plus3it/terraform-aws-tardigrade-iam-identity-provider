variable "iam_identity_provider" {
  description = "Inputs to create a SAML Provider or OpenID Provider"
  type = object({
    saml = optional(object({
      metadata_document = string
      provider_name     = string
    }))
    openid = optional(object({
      client_id_list  = list(string)
      thumbprint_list = optional(string)
      url             = string
    }))
  })
}
