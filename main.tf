provider "aws"{
    region="us-west-1"
}

resource "aws_instance" "one" {
  ami           = "ami-0cf4e1fcfd8494d5b"
  instance_type = "t2.micro"
  key_name = "asha"
  vpc_security_group_ids = ["sg-0bf2d309bfd4f4204"]
  tags = {
    Name = "test-server"
  }
}
