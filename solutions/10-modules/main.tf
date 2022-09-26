variable "spec" {}

module "deployment" {
    source = "./my_module"
    spec = var.spec
}

# 1. try to override the length
# 2. try to override the prefix
# 3. add another user in the input file
# 4. add code to create a "server" objects, follwoing the pattern used for users but add a "size" attribute to the keepers block