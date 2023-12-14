terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.medium"

  tags = {
    Name = "testinginfracost"
  }
}
resource "aws_instance" "database_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t3a.medium"

  tags = {
    Name = "testinginfracost"
  }
}
resource "aws_instance" "new_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t3a.medium"

  tags = {
    Name = "testinginfracost"
  }
}
