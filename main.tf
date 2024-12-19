provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count = 4
  ami = "ami-0166fe664262f664c"
  instance_type = "t2.medium"
  key_name      = "aamirkey"
  vpc_security_group_ids = ["sg-0970e3aea4b78ba88"]
  tags = {
    Name = var.instance_name[count.index]
  }
}
variable "instance_name" {
default = ["jenkins", "nexus", "tomcat", "grafana"]
}
