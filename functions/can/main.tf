locals {
    array = [1,2,3]
}

output "valid" {
    value = can(local.array[0])
}

output "invalid" {
    value = can(local.array[4])
}