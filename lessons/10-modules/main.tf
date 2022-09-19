variable "spec" {}

module "deployment" {
    source = "./my_module"
    spec = var.spec
}

# 1. try to override the length
# 2. try to override the prefix
# 3. add another server
# 4. add code to create the "storage" objects, follwoing the pattern used for servers