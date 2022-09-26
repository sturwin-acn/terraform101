locals {
    users = {
        steve = {
            length = 2 
        },
        zoe = {
            length = 3
        }
    }
}

resource "random_pet" "user" {
    for_each = local.users
    length = each.value.length
}

output "result" {
    value  = random_pet.user
}

# 1. add another user
# 2. add another attribute
# 3. comment out the code above and try the alternative code below which uses an array rather than a map

# locals {
#     users = [
#         {
#             name = "steve"
#             length = 2 
#         },
#         {
#             name = "zoe" 
#             length = 3
#         }
#     ]
# }

# resource "random_pet" "user" {
#     for_each = {
#         for user in local.users : user.name => user
#     }

#     length = each.value.length
# }

# output "result" {
#     value  = random_pet.user
# }
