
# Data source for the latest Amazon Linux 2 AMI
/*
data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}
*/
# Example EC2 instance
resource "aws_instance" "newbox-dev" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = {
    Name = "NewRelicBox"
    Cost = "SRE"
    env = "dev"
  }

  # An example EC2 instance created with Terraform
}

# Output the instance ID
/*
output "instance_id" {
  description = "The ID of the created EC2 instance"
  value       = aws_instance.newbox-dev.id
}
*/

output "webserver_ip" {
  description = "The public IP EC2 instance"
  value       = "http://${aws_instance.newbox-dev.public_ip}/"
}