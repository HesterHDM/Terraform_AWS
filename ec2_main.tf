resource "aws_instance" "my_ec2" {
  	provider = aws.us_east_1
	count                       = var.ec2.count
  	ami                         = var.ec2.ami
  	instance_type               = var.ec2.type
  	key_name                    = var.ec2.key
  	associate_public_ip_address = true
  	tags = {
    		Name = "Terraform-instance-${count.index + 1}"
  }
}

output "instance_info" {
  value = { for instance in aws_instance.my_ec2 : instance.tags.Name => instance.public_ip }
}
