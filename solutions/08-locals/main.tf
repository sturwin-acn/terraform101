locals {
    count = 2
    # note that we can add additional locals within the same block
    prefix = "user"
}

resource "random_pet" "user" {
    count = local.count
    # note that you use "local" and not "locals" when referencing a local variable
    prefix = local.prefix
}

output "result" {
    value  = random_pet.user
}

# 1. change the count local
# 2. add another local for prefix or length and assign it