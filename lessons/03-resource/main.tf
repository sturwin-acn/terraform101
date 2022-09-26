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
# 2. output a single attribute
# 3. add another resource