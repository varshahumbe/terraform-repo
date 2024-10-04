provider "aws"{
    region="us-east-2"
}
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }
}

resource "aws_instance" "web" {
  ami           = "ami-09da212cf18033880"
  instance_type = "t2.micro"
  key_name = "module2"
  vpc_security_group_ids = ["sg-02dc5520d241dfb63"]
  tags = {
    Name = "HelloWorld"
  }
}
