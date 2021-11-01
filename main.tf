provider "cloudflare" {
  email = var.email
  token = var.apikey
}

resource "cloudflare_record" "cfhelloworld" {
  domain  = var.cfdomain
  name    = var.cfname
  value   = var.cfvalues
  type    = var.cfvalue
  proxied = var.cfproixed
}
