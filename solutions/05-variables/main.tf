variable "length" {}
variable "prefix" {}

resource "random_pet" "user" {
    length = var.length
    prefix = var.prefix
}

output "result" {
    value  = random_pet.user
}

# 1. provide a value for the variable at run time
# 2. add another variable for prefix