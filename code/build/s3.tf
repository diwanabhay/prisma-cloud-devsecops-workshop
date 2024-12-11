provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    git_commit           = "93ceaa942a03e6a0b7c2214dc52f655715ebf75b"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:38:03"
    git_last_modified_by = "diwaabha@amazon.com"
    git_modifiers        = "diwaabha"
    git_org              = "diwanabhay"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}
## commenting for testing
resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
