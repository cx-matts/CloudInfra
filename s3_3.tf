resource "aws_s3_bucket" "s3_3" {
  bucket = "S3_3"
  acl    = "public-read-write"

  tags = {
    Name        = "My bucket 3"
    Environment = "Dev"
  }

  versioning {
    mfa_delete = true
  }
}
