provider aws {
  region = "us-east-1"
}

module "create_provider" {
  source = "../../"
  providers = {
    aws = aws
  }

  create_saml_provider = false
}
