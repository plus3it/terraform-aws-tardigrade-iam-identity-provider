module "create_openid" {
  source = "../.."

  iam_identity_provider = {
    openid = {
      client_id_list = ["266362248691-342342xasdasdasda-apps.googleusercontent.com"]
      url            = "https://accounts.google.com"
    }
  }
}
