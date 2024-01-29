data "aws_s3_bucket" "origin" {
  bucket = var.origin_bucket
}

data "aws_s3_bucket" "logging" {
  bucket = var.logging_bucket
}

data "aws_acm_certificate" "this" {
  domain      = var.acm_domain
  types       = ["AMAZON_ISSUED"]
  most_recent = true
}