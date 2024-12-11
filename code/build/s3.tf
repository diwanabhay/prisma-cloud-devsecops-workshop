provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "36b406aa-2530-4b03-8006-e256b9bb7099"
    git_commit           = "05b26811d27adc4d34da728ae57383a5b9c67b5b"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:40:08"
    git_last_modified_by = "diwaabha@amazon.com"
    git_modifiers        = "diwaabha"
    git_org              = "diwanabhay"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
