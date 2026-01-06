resource "random_password" "password" {
  length           = 20
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "random_pet" "pet" {
  length = 2
  separator = "-"
}

#Source: https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password
#Source: https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet
#Source: https://spacelift.io/blog/terraform-random-provider
