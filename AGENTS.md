# Agent Instructions

Before starting any task in this repository:

1. Run `make agents/sync`. It writes the shared Plus3 IT instructions for this repository's tardigrade-ci version to `.agents/plus3it/AGENTS.md`.
2. Read `.agents/plus3it/AGENTS.md` and follow it together with this file. If the sync fails, tell the user, and don't guess the conventions.

These rules always apply, even without the shared instructions:

- Don't push, open pull requests, publish releases, or apply infrastructure changes unless the user asks. List those steps for a person in your final report.
- Don't edit files under `.agents/plus3it/`; they are generated and overwritten by the sync.

@.agents/plus3it/AGENTS.md

## Repository-specific

### Purpose

This Terraform module creates either an IAM SAML provider or an IAM OpenID Connect provider. The single input, `iam_identity_provider`, is an object with an optional `saml` block (`metadata_document`, `provider_name`, `tags`) and an optional `oidc` block (`client_id_list`, `url`, `thumbprint_list`, `tags`); a validation rule requires exactly one of the two. The module outputs `saml_identity_provider_arn`, `saml_identity_provider_valid_until`, and `openid_identity_provider_arn`, and each output is null when its provider type is not created.

### Module-specific files

- `tests/fixtures/metadata.xml` — Sample SAML metadata document that the test scenarios load as the SAML provider input
