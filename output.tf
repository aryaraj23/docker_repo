output "instance_ip" {
  value = aws_instance.docker-ec2.public_ip
}
