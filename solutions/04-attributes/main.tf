resource "random_pet" "user" {
    length = 4
    prefix = "user"
}

output "result" {
    value  = random_pet.user
}

# 1. change the attribute value
# 2. add the "prefix" attribute
