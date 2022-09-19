variable "length" {}

resource "random_pet" "main" {
    length = 3
}

output "result" {
    value  = random_pet.main
}

# 1. provide a value for the variable at run time
# 2. assign the variable to the attribute