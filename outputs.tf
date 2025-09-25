output "ec2_public_ips" {
  value = aws_instance.ec2_with_terraform[*].public_ip # List is given because of the count parameter in aws_instance
}



output "ec2_public_ips" {
  value = [for instance in aws_instance.ec2_with_terraform : instance.public_ip]
}
