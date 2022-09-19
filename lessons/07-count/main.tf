resource "random_pet" "main" {
    count = 2
}

output "result" {
    value  = random_pet.main
}

# 1. change the count
# 2. convert count into an input variable