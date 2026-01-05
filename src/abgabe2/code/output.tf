output "output_random_password" {
  value = nonsensitive(random_password.password.result)
}

#Source: IntelliJ Autocomplete (No Ai)
#Source: https://stackoverflow.com/questions/67650019/need-to-display-sensitive-data-output-variables-in-terraform
