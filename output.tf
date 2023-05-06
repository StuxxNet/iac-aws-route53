output "hostedzones_id" {
  description = "The list of IDs of the Route53 hosted zones created"
  value = [
    for zone in aws_route53_zone.this : zone.zone_id
  ]
}