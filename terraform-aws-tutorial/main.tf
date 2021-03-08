terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "jean_lainee_personal"
  region  = "ap-east-1"
}

resource "aws_instance" "terraform-tutorial" {
  ami           = "ami-0774445f9e6290ccd"
  instance_type = "t3.micro"
  tags = {
    Name = "terraform-tutorial"
  }
}