resource "aws_cloudfront_origin_access_identity" "this" {
  comment = local.comment

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_cloudfront_origin_access_control" "this" {
  name                              = var.name
  description                       = var.name
  origin_access_control_origin_type = "s3"
  signing_behavior                  = var.signing_behavior
  signing_protocol                  = "sigv4"
}

resource "aws_cloudfront_distribution" "this" {
  enabled             = var.enabled
  staging             = var.staging
  retain_on_delete    = var.retain_on_delete
  wait_for_deployment = var.wait_for_deployment
  is_ipv6_enabled     = var.is_ipv6_enabled
  comment             = local.comment
  default_root_object = var.default_root_object

  origin {
    domain_name              = data.aws_s3_bucket.origin.bucket_domain_name
    origin_access_control_id = aws_cloudfront_origin_access_control.this.id
    origin_id                = local.s3_origin_id

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.this.cloudfront_access_identity_path
    }
  }

  logging_config {
    include_cookies = var.logging_include_cookies
    bucket          = data.aws_s3_bucket.origin.bucket_domain_name
    prefix          = var.logging_prefix
  }

  aliases = var.aliases

  default_cache_behavior {
    allowed_methods  = var.allowed_methods
    cached_methods   = var.cached_methods
    target_origin_id = local.s3_origin_id

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = var.viewer_protocol_policy
    default_ttl            = var.default_ttl
    min_ttl                = var.min_ttl
    max_ttl                = var.max_ttl
  }

  price_class = ver.price_class

  restrictions {
    geo_restriction {
      restriction_type = "none"
      locations        = []
    }
  }

  tags = local.tags

  viewer_certificate {
    acm_certificate_arn            = data.aws_acm_certificate.this.arn
    cloudfront_default_certificate = false
    minimum_protocol_version       = var.minimum_protocol_version
  }
}

resource "aws_cloudfront_monitoring_subscription" "this" {
  distribution_id = aws_cloudfront_distribution.this.id

  monitoring_subscription {
    realtime_metrics_subscription_config {
      realtime_metrics_subscription_status = var.realtime_metrics_subscription_status
    }
  }
}
