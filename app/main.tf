terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "cloudflare" {
  email = var.email
  api_key = var.apikey
}

resource "cloudflare_record" "cfhelloworld" {
  zone_id = var.cfzoneid
  name    = var.cfname
  value   = var.cfvalue
  type    = var.cftype
  proxied = var.cfproixed
}
