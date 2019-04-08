provider "aws" {
    version = "~> 2.5"
}

# S3 bucket to store terraform state
resource "aws_s3_bucket" "tf-state" {
    bucket = "tf-state"
     versioning {
      enabled = true
    } 
    lifecycle {
      prevent_destroy = true
    } 
    tags {
      project = "terraform"
    }      
}

# DynamoDB table for locking
resource "aws_dynamodb_table" "tf-state-lock" {
  name = "tf-state-lock"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
  attribute {
    name = "LockID"
    type = "S"
  }
  tags {
    project = "terraform"
  }
}