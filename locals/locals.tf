locals {
    ami_id = "ami-041e2ea9402c46c32"
    sg_id = "sg-06152fc239653ba0c"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
    tags = {
        name = "locals"
    }
}

