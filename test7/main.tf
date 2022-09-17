variable "server_groups" {}

locals {
  server_instances = flatten(
    [
      for group in var.server_groups: [
        for instance in group.instances : merge(
          group.spec,
          {
            owner = instance
          }
        )
      ]
    ]
  ) 
}


resource "random_pet" "main" {
    for_each = {
        for server in local.server_instances : server.owner => server
    }

    length = each.value.length

    keepers = {
      "owner" = each.value.owner
    }
}