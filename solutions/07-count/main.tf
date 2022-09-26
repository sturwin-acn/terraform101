# note, you can't have a variable called "count" as it is a restricted word
variable "count1" {}

resource "random_pet" "user" {
    count = var.count1
}

output "result" {
    value  = random_pet.user
}

# 1. change the count
# 2. convert count into an input variable