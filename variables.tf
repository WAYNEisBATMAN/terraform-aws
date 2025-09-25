variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Number of EC2 instances to create (used for count example)"
  type        = number
  default     = 1
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  # Replace default with a region-specific AMI if needed
  default = "ami-0f918f7e67a3323f0"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
  default     = "one-piece-treasure"
}

variable "s3_tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
}

variable "ec2_tags" {
  description = "Tags for EC2 instances (used for count example)"
  type        = map(string)
  default = {
    Project = "Terraform-Demo"
  }
}

variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table used for state locking"
  type        = string
  default     = "demo-state-table"
}
