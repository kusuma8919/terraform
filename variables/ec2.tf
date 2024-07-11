resource "aws_instance" "db" {

    ami = var.ami
    vpc_security_group_ids = [aws_security_group.ec2-sg.id]
    instance_type = var.instance_type
    tags = var.tags
    }

resource "aws_security_group" "ec2-sg" {
    name = var.sg_name
    description = var.sg_description
    

    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.protocol
        cidr_blocks      = var.allowing_list
    }

    egress {
        from_port        = 0 
        to_port          = 0
        protocol         = "-1" 
        cidr_blocks      = var.allowing_list
    }

   tags =  {
    Name= "ec2-sg"
   }
}