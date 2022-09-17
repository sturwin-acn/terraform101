resource "random_pet" "main" {
    length = 3
}

output "pet_name" {
    value = random_pet.main.id
}

output "pet_details" {
    value = random_pet.main
}
