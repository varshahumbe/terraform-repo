provider "aws"{
    region="us-east-2"
}

resource "aws_instance" "one" {
  ami           = "ami-09da212cf18033880"
  instance_type = "t2.micro"
  key_name = "asha"
 # vpc_security_group_ids = ["sg-0bf2d309bfd4f4204"]
  tags = {
    Name = "terraform-server"
  }
}
