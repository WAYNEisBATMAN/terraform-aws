# AWS region where resources will be created
aws_region = "ap-south-1"

# Type of EC2 instance
instance_type = "t2.micro"

# Number of EC2 instances to create
instance_count = 3

# AMI ID for EC2 instance
ami_id = "ami-0f918f7e67a3323f0"

# Globally unique S3 bucket name
bucket_name = "one-piece-treasure"

# Tags for the S3 bucket
s3_tags = {
  Name        = "MyS3Bucket"
  Environment = "Dev"
}

# Tags for EC2 instances
ec2_tags = {
  Project = "Terraform-Demo"
}

# Name of the DynamoDB table used for state locking
dynamodb_table_name = "demo-state-table"
