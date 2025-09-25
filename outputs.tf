
output "ec2_instance_ids" {
  description = "IDs of the created EC2 instances"
  value       = aws_instance.ec2_with_terraform[*].id
}

output "ec2_public_ips" {
  description = "Public IPs of the created EC2 instances"
  value       = aws_instance.ec2_with_terraform[*].public_ip
}

output "s3_bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.awss3bucket.bucket
}

output "dynamodb_table_name" {
  description = "Name of the DynamoDB table used for state locking"
  value       = aws_dynamodb_table.my_dynamodb_table.name
}
