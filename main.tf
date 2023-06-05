terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.16.0"
    }
  }
}

provider "linode" {
  token = var.token
}

resource "linode_instance" "example_instance" {
  label           = "example_instance_label"
  image           = "linode/ubuntu22.04"
  region          = var.region
  type            = "g6-standard-1"
  authorized_keys = [var.ssh_key]
  root_pass       = var.root_pass
}

