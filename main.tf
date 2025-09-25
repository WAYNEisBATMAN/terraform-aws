resource "aws_s3_bucket" "awss3bucket" {
  bucket = "One-Piece-Treasure" # Replace with a globally unique bucket name

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }

}


# Approach 1: Using count and tags to create multiple EC2 instances with unique names 

resource "aws_instance" "ec2_with_terraform" {
  count         = var.instance_count
  instance_type = var.instance_type
  ami           = var.ami_id
  tags = {
    Name = "Warlord-${count.index}" # Using count.index to create unique names for multiple instances
  }
}


# Approach 2: Using for_each and locals to create multiple EC2 instances with unique names

# locals {
#   instances = toset(["Luffy", "Sabo", "Ace", "Zoro"])
# }

# resource "aws_instance" "ec2_with_terraform" {
#   for_each      = local.instances
#   instance_type = var.instance_type
#   ami           = var.ami_id
#   tags = {
#     Name = each.key
#   }
# }


resource "aws_dynamodb_table" "my_dynamodb_table" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}






