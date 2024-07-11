variable "ami" {
  type    = string
  default = "ami-041e2ea9402c46c32"
  description = "RHEL-9-DevOps-Practice" 
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "tags" {
    default = {
        project = "expense"
        environment = "Dev"
        module = "db"
        name = "db"
    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowing_list" {
    default = ["0.0.0.0/0"]
}
