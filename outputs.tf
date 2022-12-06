output "ips_development" {
  value = aws_instance.development.public_ip
}

output "ips_development-ohio" {
  value = aws_instance.development-ohio.public_ip
}