provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0d1622042e957c247"
  instance_type = "t2.micro"
  tags = {
    Name = "shakir01"
  }
}
