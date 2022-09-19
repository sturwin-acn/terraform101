resource "random_pet" "main" {
    length = 3
}

output "result" {
    value  = random_pet.main
}

# 1. change the attribute value
# 2. add the "prefix" attribute