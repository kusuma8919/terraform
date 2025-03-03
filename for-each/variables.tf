variable "instance_names" {
    type        = map
    default     ={
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}
variable "zone_id" {
    default = "Z0740767COCR2C66AGGM"
}

variable "common_tags" {
    type = map
    default = {
        project= "expense"
        terraform = "true"
    }
}
variable "domain_name" {
    default = "sushmadev.online"
}