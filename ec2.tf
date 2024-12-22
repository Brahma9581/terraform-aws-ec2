resource "aws_instance" "ec2-module" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [var.security_group]
  
}