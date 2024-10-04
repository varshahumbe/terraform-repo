provider "aws" {
region = "us-east-2"
}

resource "aws_instance" "one" {
ami = "ami-037774efca2da0726"
instance_type = "t2.micro"
key_name = "module2"
vpc_security_group_ids = ["sg-02dc5520d241dfb63"]
tags = {
Name = "terraform-server"
}
}
