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
  ami           = "ami-036915aa0cb1d91a1"
  instance_type = "t3.micro"
  tags = {
    Name = "terraform-tutorial"
  }
}