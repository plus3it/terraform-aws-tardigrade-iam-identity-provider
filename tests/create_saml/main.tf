resource "random_string" "entity_id" {
  length      = 20
  special     = false
  min_upper   = 1
  min_lower   = 1
  min_numeric = 1
}

resource "random_string" "this" {
  length  = 6
  numeric = false
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

module "create_saml" {
  source = "../../"

  iam_identity_provider = {
    saml = {
      metadata_document = file("${path.module}/template/metadata.xml")
      provider_name     = "tardigrade-provider-${random_string.this.result}"
    }
  }
}
