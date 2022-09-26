variable "length" {}
variable "prefix" {}

resource "random_pet" "user" {
    length = var.length
    prefix = var.prefix
}

output "result" {
    value  = random_pet.user
}

# 1. change the value in the tfvars file
# 2. add a new variable for prefix