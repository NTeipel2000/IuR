resource "random_password" "password" {
  length           = 20
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

#Source: https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password
