
# Output for Approach 1 (Using count and tags)
output "ec2_public_ips" {
  value = aws_instance.ec2_with_terraform[*].public_ip # List is given because of the count parameter in aws_instance
}


# Output for Approach 2 (Using for_each and locals)
# output "ec2_public_ips" {
#   value = [for instance in aws_instance.ec2_with_terraform : instance.public_ip]
# }
