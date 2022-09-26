locals {
    user_inputs = [
        for user in try(var.spec.users, []) : merge (
            {
                # can override
                length = 2
            },
            user,
            {
                # cannot override
                prefix = "user"
            }
        )
    ]
}

resource "random_pet" "user" {
    for_each = {
      for entry in local.user_inputs : entry.name => entry
    }

    length = each.value.length
    prefix = each.value.prefix

    keepers = merge(
        {
            type = "standard"
        },
        try(each.value.spec, {})
    )
}