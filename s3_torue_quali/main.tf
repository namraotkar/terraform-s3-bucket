provider "aws" {
  region = var.region
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "example" {
  bucket = "torque-quali-demo-${random_id.suffix.hex}"
}

resource "aws_s3_bucket_acl" "example_acl" {
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}
