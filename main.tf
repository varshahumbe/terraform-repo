provider "aws"{
    region="us-east-2"
}

resource "aws_instance" "one" {
  ami           = "ami-09da212cf18033880"
  instance_type = "t2.micro"
  key_name = "asha"
  vpc_security_group_ids = ["sg-02dc5520d241dfb63"]
  tags = {
    Name = "test-server"
  }
}
