provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    git_commit           = "05b26811d27adc4d34da728ae57383a5b9c67b5b"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:40:08"
    git_last_modified_by = "diwaabha@amazon.com"
    git_modifiers        = "diwaabha"
    git_org              = "diwanabhay"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_trace            = "4e6067a2-cadc-483c-be5b-28c2e3197478"
  }
}
## commenting for testing
resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
