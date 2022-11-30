terraform {
  required_version = ">1.0.0"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.25.2"
      #version = "!=2.25.2"
      #version = ">=2.25.2"
      #version = "~>2.16.0" Maior que essa, mas que seja uma minor release. 
    }
  }
}

provider "digitalocean" {
  token = var.token
}