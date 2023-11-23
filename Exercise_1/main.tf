terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  count = "4"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  subnet_id = "subnet-0d0e56f794ee8a3e1"  # Specify your subnet name
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "Udacity_M4" {
#   count = "2"
#   ami = "ami-0323c3dd2da7fb37d"
#   instance_type = "m4.large"
#   subnet_id = "subnet-0d0e56f794ee8a3e1"  # Specify your subnet name
#   tags = {
#    Name = "Udacity M4"
#  }
#}
