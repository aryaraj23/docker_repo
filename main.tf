provider "aws" {
  region = var.region
}

resource "aws_instance" {
  ami = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "docker_ec2"
  }
}
