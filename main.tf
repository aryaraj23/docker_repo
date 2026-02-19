provider "aws" {
  region = var.region
}

resource "aws_instance" "docker-ec2" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name

  tags = {
    Name = "docker_ec2"
  }
}

resource "aws_security_group" "docker_sg" {
  name = var.docker_sg
  description = "Allow SSH and HTTP"

  ingress {
    description = "For SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "For HTTP"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

