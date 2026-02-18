provider "aws" {
  region = var.region
}

resource "aws_instance" "docker-ec2" {
  ami = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "docker_ec2"
  }
}
