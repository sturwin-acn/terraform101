variable "lengths" {}

resource "random_pet" "main" {
    count = length(var.lengths)

    length = var.lengths[count.index]
}