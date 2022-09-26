#
# A "resource" in terraform can be anything 
# - a user
# - a server
# - a load balancer
# - a dns record
#
# We are going to use the dummy "random_pet" type of resource 
# and we will pretend that it represents the concept of a user
#

resource "random_pet" "user" {}

# 1. output all the details for the "user"
# we can get the full object by referencing its full name <type>.<name>
output "full" {
    value = random_pet.user
}

# 2. output a single attribute
# if we want a single attribute, we can "dot walk" the object structure
output "full" {
    value = random_pet.user.id
}

# 3. add another resource
# note that the internal reference name must be unique
resource "random_pet" "user2" {}