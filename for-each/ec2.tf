resource "aws_instance" "expense" {
    for_each = var.instance_names
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-06152fc239653ba0c"]
    instance_type = each.value
    tags = merge (
        var.common_tags,
        {
            name = each.key 
            module = each.key
        }
    )

}