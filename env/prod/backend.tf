terraform {
  backend "s3" {
    bucket         = "tf-aditya0123ag"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
  }
}