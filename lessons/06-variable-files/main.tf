variable "length" {}

resource "random_pet" "main" {
    length = var.length
}

output "result" {
    value  = random_pet.main
}

# 1. change the value in the tfvars file
# 2. add a new variable for prefix