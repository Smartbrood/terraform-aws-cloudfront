variable "name" {
  description = ""
  type        = string
}

variable "enabled" {
  description = ""
  type        = bool
  default     = true
}

variable "staging" {
  description = ""
  type        = bool
  default     = false
}

variable "retain_on_delete" {
  description = ""
  type        = bool
  default     = false
}

variable "wait_for_deployment" {
  description = ""
  type        = bool
  default     = true
}

variable "is_ipv6_enabled" {
  description = ""
  type        = bool
  default     = true
}

variable "comment" {
  description = ""
  type        = string
  default     = "CloudFront distribution created with module Smartbrood/cloudfront/aws."
}

variable "default_root_object" {
  description = ""
  type        = string
  default     = "index.html"
}

variable "origin_bucket" {
  description = ""
  type        = string
}

variable "logging_bucket" {
  description = ""
  type        = string
}

variable "logging_prefix" {
  description = ""
  type        = string
}

variable "logging_include_cookies" {
  description = ""
  type        = bool
  default     = false
}

variable "price_class" {
  description = ""
  type        = string
  default     = "PriceClass_100"
}

variable "aliases" {
  description = ""
  type        = set(string)
  default     = ["mysite.example.com", "yoursite.example.com"] # TODO: Changeme
}

variable "tags" {
  description = "Map of tags to assign to the certificate resource."
  type        = map(any)
  default = {

  }
}

variable "default_ttl" {
  description = ""
  type        = number
  default     = 86400
}

variable "min_ttl" {
  description = ""
  type        = number
  default     = 0
}

variable "max_ttl" {
  description = ""
  type        = number
  default     = 31536000
}

variable "viewer_protocol_policy" {
  description = ""
  type        = string
  default     = "https-only"
}

variable "acm_domain" {
  description = ""
  type        = string
}

variable "minimum_protocol_version" {
  description = ""
  type        = string
  default     = "TLSv1.2_2021"
}

variable "realtime_metrics_subscription_status" {
  description = ""
  type        = string
  default     = "Enabled"
}

variable "signing_behavior" {
  description = ""
  type        = string
  default     = "always"
}

variable "allowed_methods" {
  description = ""
  type        = set(string)
  default     = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
}

variable "cached_methods" {
  description = ""
  type        = set(string)
  default     = ["GET", "HEAD"]
}