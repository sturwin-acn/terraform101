variable "length" {}

resource "random_pet" "main" {
    length = var.length
}