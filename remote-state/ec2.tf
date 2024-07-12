resource "aws_instance" "db" {

    ami = "ami-041e2ea9402c46c32"
    vpc_security_group_ids = ["sg-06152fc239653ba0c"]
    instance_type = "t3.micro"

    tags = {
        Name = "db"
    }
}