variable "saml_provider_name" {
  description = "Name of the SAML Identity Provider"
  type        = string
  default     = "disabled"
  validation {
    condition     = contains(["enable", "disable"], var.saml_provider_name)
    error_message = "`saml_provider_name` must be one of: \"enable\", \"disable\"."
  }
}

variable "saml_provider_metadata" {
  description = "XML metadata for the SAML Identity Provider"
  default     = ""
  type        = string
}

variable "openid_connect" {
  description = "Provides an IAM OpenID Connect Provider"
  type = object({
    url             = string
    client_id_list  = list(string)
    thumbprint_list = optional(string)
  })
  default = "disable"
  validation {
    condition     = contains(["enable", "disable"], var.identity_provider)
    error_message = "`identity_provider` must be one of: \"enable\", \"disable\"."
  }
}