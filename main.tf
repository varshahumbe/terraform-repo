provider "aws"{
    region="us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-09b2477d43bc5d0ac"
  instance_type = "t2.micro"
  key_name = "swara"
 # vpc_security_group_ids = ["sg-0bf2d309bfd4f4204"]
  tags = {
    Name = "terraform-server"
  }
}
