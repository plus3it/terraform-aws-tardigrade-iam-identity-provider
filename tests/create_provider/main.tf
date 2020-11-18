provider aws {
  region = "us-east-1"
}

resource "random_string" "entity_id" {
  length      = 20
  special     = false
  min_upper   = 1
  min_lower   = 1
  min_numeric = 1
}

resource "random_string" "this" {
  length  = 6
  number  = false
  special = false
  upper   = false
}

data "template_file" "this" {
  template = file("${path.module}/template/metadata.xml")

  vars = {
    entity_id = random_string.entity_id.result
    domain    = random_string.this.result
  }
}

module "create_provider" {
  source = "../../"
  providers = {
    aws = aws
  }

  saml_provider_name     = "tardigrade-provider-${random_string.this.result}"
  saml_provider_metadata = file("${path.module}/template/metadata.xml")
}
