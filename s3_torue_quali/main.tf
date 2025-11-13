provider "aws" {
  region = var.region
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "example" {
  bucket = "torque-quali-demo-${random_id.suffix.hex}"
}

