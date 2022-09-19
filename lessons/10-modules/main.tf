variable "spec" {}

module "deployment" {
    source = "./my_module"
    spec = var.spec
}