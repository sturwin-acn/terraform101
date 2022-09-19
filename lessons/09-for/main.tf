locals {
    pets = {
        steve = {
            length = 2 
        },
        zoe = {
            length = 3
        }
    }
}

resource "random_pet" "main" {
    for_each = local.pets
    length = each.value.length
}

output "result" {
    value  = random_pet.main
}

# 1. add another pet
# 2. add another attrobute
# 3. comment out the code above and try the alternative code below

# locals {
#     pets = [
#         {
#             owner = "steve"
#             length = 2 
#         },
#         {
#             owner = "zoe" 
#             length = 3
#         }
#     ]
# }

# resource "random_pet" "main" {
#     for_each = {
#         for pet in local.pets : pet.owner => pet
#     }

#     length = each.value.length
# }

# output "result" {
#     value  = random_pet.main
# }
