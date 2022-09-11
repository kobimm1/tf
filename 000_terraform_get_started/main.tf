terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.30.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = ""
  instance_type = "t2.micro"
  user_data     = file("install_dokcer.sh")

  tags = {
    Name = "MyServer"
    Env  = "Dev"
  }
}

