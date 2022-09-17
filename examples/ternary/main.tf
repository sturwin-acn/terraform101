locals {
    a = null
    b = 2
    ternary = local.a != null ? local.a : local.b
}

output "ternary" {
    value = local.ternary
}