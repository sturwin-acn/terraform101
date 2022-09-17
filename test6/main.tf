variable "pets" {}

resource "random_pet" "main" {
    for_each = {
        for pet in var.pets : pet.owner => pet
    }

    length = each.value.length

    keepers = {
      "owner" = each.value.owner
    }
}