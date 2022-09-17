locals {
    array = [1,2,3]
    invalid_index = 4
    valid_index = 1
    try = try(
        local.array[local.invalid_index], 
        local.array[local.valid_index]
    )
}

output "try" {
    value = local.try
}