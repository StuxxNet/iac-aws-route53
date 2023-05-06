## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | The default tags to apply to all resources | `map(string)` | <pre>{<br>  "Environment": "Dev"<br>}</pre> | no |
| <a name="input_top_level_domain"></a> [top\_level\_domain](#input\_top\_level\_domain) | The list of top level domains to use for the Route53 zone | <pre>map(object({<br>    vpcs_config   = optional(map(object({<br>      vpc_id     = string<br>      vpc_region = string<br>    })))<br>    comment       = string<br>    force_destroy = bool<br>    tags          = map(string)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hostedzones_id"></a> [hostedzones\_id](#output\_hostedzones\_id) | The list of IDs of the Route53 hosted zones created |
