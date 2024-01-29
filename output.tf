output "id" {
  description = "ID"
  value       = aws_cloudfront_distribution.this.id
}

output "arn" {
  description = "ARN"
  value       = aws_cloudfront_distribution.this.arn
}

output "status" {
  description = "Status"
  value       = aws_cloudfront_distribution.this.status
}
