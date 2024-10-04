provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0d1622042e957c247"
  instance_type = "t2.micro"
  key_name      = "terraformkey"
  vpc_security_group_ids = ["sg-02b20a5b329680509"]
  tags = {
    Name = "shakir01"
  }
}
