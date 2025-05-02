module "create_oidc" {
  source = "../.."

  iam_identity_provider = {
    oidc = {
      client_id_list = ["266362248691-342342xasdasdasda-apps.googleusercontent.com"]
      url            = "https://accounts.google.com"
    }
  }
}
