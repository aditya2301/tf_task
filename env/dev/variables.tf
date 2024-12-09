variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_ami" {
  description = "The Image for the webserver"
  type        = string
  default     = "ami-010ff12841d83a957"
}
