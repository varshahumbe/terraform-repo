provider "aws"{
    region="us-west-1"
}

resource "aws_instance" "one" {
  ami           = "ami-0cf4e1fcfd8494d5b"
  instance_type = "t2.micro"
  tags = {
    Name = "test-server"
  }
}
