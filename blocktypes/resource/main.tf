resource "random_pet" "main" {}

output "data" {
    value = random_pet.main
}