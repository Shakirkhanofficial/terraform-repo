provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  count = 4
  ami = "ami-078264b8ba71bc45e"
  instance_type = "t2.micro"
  key_name      = "Terraform"
  vpc_security_group_ids = ["sg-0c7484c06d8541775"]
  tags = {
    Name = var.instance_name
  }
}
variable "instance_name" {
default = ["jenkins","nexus","tomcat1","tomcat2"]
}
