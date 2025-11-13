locals {
  env = terraform.workspace
}
resource "aws_instance" "expense" {
    for_each = var.instances[local.env]
    instance_type = each.value
    # instance_type = lookup(var.instances, terraform.workspace)
    ami = "ami-0733cbac1dcca0be4"
    vpc_security_group_ids = [ "sg-0067ac1bfd8ab69ae" ]

    tags = merge(
        var.common_tags,
        var.tags,
        {
            Name = "${each.key}-${local.env}"
            #Name = "terraform_${terraform.workspace}"
        }
    )
}