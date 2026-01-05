terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

provider "random" {
  # Configuration options
}

#Source: https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password
