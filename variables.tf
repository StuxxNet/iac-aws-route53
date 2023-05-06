variable "top_level_domain" {
  description = "The list of top level domains to use for the Route53 zone"
  type = map(object({
    vpcs_config   = optional(map(object({
      vpc_id     = string
      vpc_region = string
    })))
    comment       = string
    force_destroy = bool
    tags          = map(string)
  }))
}

variable "default_tags" {
  description = "The default tags to apply to all resources"
  type = map(string)
  default = {
    Environment = "Dev"
  }
}