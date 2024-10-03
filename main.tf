provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  ami           = "ami-078264b8ba71bc45e"
  instance_type = "t2.micro"
  key_name      = "terraformkey"
  vpc_security_group_ids = ["sg-02b20a5b329680509"]
  tags = {
    Name = "shakir01"
  }
}
