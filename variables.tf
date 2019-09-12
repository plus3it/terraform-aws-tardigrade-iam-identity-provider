variable "create_saml_provider" {
  description = "Controls whether to create the SAML Identity Provider"
  default     = true
}

variable "saml_provider_name" {
  description = "Name of the SAML Identity Provider"
  default     = ""
  type        = string
}

variable "saml_provider_metadata" {
  description = "XML metadata for the SAML Identity Provider"
  default     = ""
  type        = string
}

