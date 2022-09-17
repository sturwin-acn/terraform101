locals {
    test_msg = "hello world"
}

output "msg" {
    value = local.test_msg
}