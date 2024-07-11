variable "ami" {
  type    = string
  default = "ami-041e2ea9402c46c32"
  description = "RHEL-9-DevOps-Practice" 
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "instance_name" {
    default = "db"
}