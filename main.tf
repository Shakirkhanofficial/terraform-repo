provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  ami           = "ami-08718895af4dfa033"
  instance_type = "t2.micro"
  key-name      = "terraform-key"
  vpc_security_group_ids = ["sg-02b20a5b329680509"]
  tags = {
    Name = "shakir01"
  }
}
