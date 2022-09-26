resource "random_pet" "user" {
    count = 2
}

output "result" {
    value  = random_pet.user
}

# 1. change the count
# 2. convert count into an input variable