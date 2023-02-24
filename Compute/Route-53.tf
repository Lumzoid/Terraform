# terraform aws data hosted zone
data "aws_route53_zone" "hosted_zone" {
  name = var.domain-name
}

# terraform aws route 53 record
resource "aws_route53_record" "site_domain" {
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.record_name
  type    = "A"

  alias {
    name = aws_elb.helloworld.dns_name
    zone_id = aws_elb.helloworld.zone_id
    evaluate_target_health = true
  }
}