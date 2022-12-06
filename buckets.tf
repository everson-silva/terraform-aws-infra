resource "aws_s3_bucket" "dev" {
  bucket = var.nameBucket_dev

  tags = {
    Name        = var.nameBucket_dev
    Environment = var.bucketEnvironment
  }
}

resource "aws_s3_bucket_acl" "dev_acl" {
  bucket = aws_s3_bucket.dev.id
  acl    = var.bucket_acl
}
