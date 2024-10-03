provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  ami           = "ami-08718895af4dfa033"
  instance_type = "t2.micro"
  tags = {
    Name = "shakir01"
  }
}
