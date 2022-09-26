locals {
    count = 1
}

resource "random_pet" "user" {
    count = local.count
}

output "result" {
    value  = random_pet.user
}

# 1. change the count local
# 2. add another local for prefix or length and assign it