locals {
    object1 = {
        attr1 = "a"
        attr2 = "b"
    }

    object2 = {
        attr2 = "c"
        attr3 = "d"
    }
    
    merged = merge(
        local.object1,
        local.object2
    )
}

output "merged" {
    value = local.merged
}