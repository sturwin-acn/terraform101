locals {
    count = 1
}

resource "random_pet" "main" {
    count = local.count
}

output "result" {
    value  = random_pet.main
}

# 1. change the count local
# 2. add another local for prefix or length and assign it