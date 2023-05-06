resource "aws_route53_zone" "this" {
  for_each = var.top_level_domain

  name = each.key
  comment = each.value.comment
  force_destroy = each.value.force_destroy

  dynamic "vpc" {
    for_each = each.value.vpcs_config != null ? each.value.vpcs_config : {}
    content {
      vpc_id = vpc.value.vpc_id
      vpc_region = vpc.value.vpc_region
    }
  }
  
  tags          = merge(var.default_tags, each.value.tags)

}