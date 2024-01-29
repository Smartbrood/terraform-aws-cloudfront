locals {
  comment      = var.name
  s3_origin_id = var.origin_bucket
  tags = merge(var.tags, {
    Terraform = true
    Module    = "Smartbrood/terraform-aws-cloudfront"
  })
}
