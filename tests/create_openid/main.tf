module "create_openid_connect" {
  source = "../.."

  iam_identity_provider = {
    openid_connect = {
      client_id_list = ["266362248691-342342xasdasdasda-apps.googleusercontent.com"]
      url            = "https://accounts.google.com"
    }
  }
}
