# terraform-aws-cloudfront

Terraform module to create CloudFront Distribution

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.74.3 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudfront_distribution.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_monitoring_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_monitoring_subscription) | resource |
| [aws_cloudfront_origin_access_control.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_control) | resource |
| [aws_cloudfront_origin_access_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acm_domain"></a> [acm\_domain](#input\_acm\_domain) | n/a | `string` | n/a | yes |
| <a name="input_logging_bucket"></a> [logging\_bucket](#input\_logging\_bucket) | n/a | `string` | n/a | yes |
| <a name="input_logging_prefix"></a> [logging\_prefix](#input\_logging\_prefix) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_origin_bucket"></a> [origin\_bucket](#input\_origin\_bucket) | n/a | `string` | n/a | yes |
| <a name="input_aliases"></a> [aliases](#input\_aliases) | n/a | `set(string)` | <pre>[<br>  "mysite.example.com",<br>  "yoursite.example.com"<br>]</pre> | no |
| <a name="input_allowed_methods"></a> [allowed\_methods](#input\_allowed\_methods) | n/a | `set(string)` | <pre>[<br>  "DELETE",<br>  "GET",<br>  "HEAD",<br>  "OPTIONS",<br>  "PATCH",<br>  "POST",<br>  "PUT"<br>]</pre> | no |
| <a name="input_cached_methods"></a> [cached\_methods](#input\_cached\_methods) | n/a | `set(string)` | <pre>[<br>  "GET",<br>  "HEAD"<br>]</pre> | no |
| <a name="input_comment"></a> [comment](#input\_comment) | n/a | `string` | `"CloudFront distribution created with module Smartbrood/cloudfront/aws."` | no |
| <a name="input_default_root_object"></a> [default\_root\_object](#input\_default\_root\_object) | n/a | `string` | `"index.html"` | no |
| <a name="input_default_ttl"></a> [default\_ttl](#input\_default\_ttl) | n/a | `number` | `86400` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_is_ipv6_enabled"></a> [is\_ipv6\_enabled](#input\_is\_ipv6\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_logging_include_cookies"></a> [logging\_include\_cookies](#input\_logging\_include\_cookies) | n/a | `bool` | `false` | no |
| <a name="input_max_ttl"></a> [max\_ttl](#input\_max\_ttl) | n/a | `number` | `31536000` | no |
| <a name="input_min_ttl"></a> [min\_ttl](#input\_min\_ttl) | n/a | `number` | `0` | no |
| <a name="input_minimum_protocol_version"></a> [minimum\_protocol\_version](#input\_minimum\_protocol\_version) | n/a | `string` | `"TLSv1.2_2021"` | no |
| <a name="input_price_class"></a> [price\_class](#input\_price\_class) | n/a | `string` | `"PriceClass_100"` | no |
| <a name="input_realtime_metrics_subscription_status"></a> [realtime\_metrics\_subscription\_status](#input\_realtime\_metrics\_subscription\_status) | n/a | `string` | `"Enabled"` | no |
| <a name="input_retain_on_delete"></a> [retain\_on\_delete](#input\_retain\_on\_delete) | n/a | `bool` | `false` | no |
| <a name="input_signing_behavior"></a> [signing\_behavior](#input\_signing\_behavior) | n/a | `string` | `"always"` | no |
| <a name="input_staging"></a> [staging](#input\_staging) | n/a | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to assign to the certificate resource. | `map(any)` | `{}` | no |
| <a name="input_viewer_protocol_policy"></a> [viewer\_protocol\_policy](#input\_viewer\_protocol\_policy) | n/a | `string` | `"https-only"` | no |
| <a name="input_wait_for_deployment"></a> [wait\_for\_deployment](#input\_wait\_for\_deployment) | n/a | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN |
| <a name="output_id"></a> [id](#output\_id) | ID |
| <a name="output_status"></a> [status](#output\_status) | Status |