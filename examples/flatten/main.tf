locals {
    array1 = [1, 2, 3]
    array2 = [4, 5, 6]
    nested_array = [local.array1, local.array2]
    flattened_array = flatten(local.nested_array)
}

output "nested" {
    value = local.nested_array
}

output "flatten" {
    value = local.flattened_array
}