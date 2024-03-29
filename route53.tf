resource "aws_route53_zone" "primary" {
  name = "exercise-3.com"
}


resource "aws_route53_record" "cname_record" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.exercise-3.com"  
  type    = "CNAME"
  ttl     = "300"
  records = ["my-alb-141888269.us-east-2.elb.amazonaws.com"]
}
