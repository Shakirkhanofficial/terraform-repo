provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count = 4
  ami = "ami-0ddc798b3f1a5117e "
  instance_type = "t2.micro"
  key_name      = "DevopsProject"
  vpc_security_group_ids = ["sg-0970e3aea4b78ba88"]
  tags = {
    Name = var.instance_name[count.index]
  }
}
variable "instance_name" {
default = ["jenkins", "nexus", "tomcat", "grafana"]
}
