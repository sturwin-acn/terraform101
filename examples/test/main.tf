locals {
    array1 = [
        {
            a = 1
            b = 2
        },
        { 
            a = 3
            b = 4
        }
    ]

    array2 = [
        {
            server_name = "steve"
        },
        {
            server_name = "zoe"
        }
     ]
}

output "setproduct" {
    value = setproduct(local.array1, local.array2)
}