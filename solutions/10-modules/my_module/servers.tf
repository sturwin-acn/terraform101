locals {
    server_inputs = [
        for server in try(var.spec.servers, []) : merge (
            {
                # can override
                length = 2
            },
            server,
            {
                # cannot override
                prefix = "server"
            }
        )
    ]
}

resource "random_pet" "server" {
    for_each = {
      for entry in local.server_inputs : entry.name => entry
    }

    length = each.value.length
    prefix = each.value.prefix

    keepers = merge(
        {
            size = "large"
        },
        try(each.value.spec, {})
    )
}