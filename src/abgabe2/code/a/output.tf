output "output_random_password" {
  value = nonsensitive(random_password.password.result)
}

output "output_random_pet" {
  value = random_pet.pet.id
}

#Source: IntelliJ Autocomplete (No Ai)
#Source: https://stackoverflow.com/questions/67650019/need-to-display-sensitive-data-output-variables-in-terraform
#Source: https://spacelift.io/blog/terraform-random-provider
