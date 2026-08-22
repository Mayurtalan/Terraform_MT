output "public_ip" {
  value = aws_instance.name.public_dns
}

output "private_ip" {
  value = aws_instance.name.private_ip
}

output "instance_type" {
  value = aws_instance.name.instance_type
}