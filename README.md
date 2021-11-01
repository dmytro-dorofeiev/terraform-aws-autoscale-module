# Terraform aws ecs autoscale

## About

This module creates AWS ECS autoscale triggers.

## Examples

```hcl
locals {
  ecs_cluster_name    = "${var.environment}-cluster"
}

data "aws_ecs_cluster" "default" {
  cluster_name = local.ecs_cluster_name
}

module "autoscale" {
  source       = "git@github.com:dmytro-dorofeiev/terraform-aws-autoscale-module.git"

  service_name = "my-service"
  cluster_name = local.ecs_cluster_name
  max_replicas = 5
  min_replicas = 1
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_appautoscaling_policy.cpu_load](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_policy.memory_load](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy) | resource |
| [aws_appautoscaling_target.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target) | resource |
| [aws_iam_role.autoscaling](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.autoscaling](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | ECS cluster name | `string` | n/a | yes |
| <a name="input_max_cpu_util"></a> [max\_cpu\_util](#input\_max\_cpu\_util) | (Required) The target value for cpu utilization scaling. | `number` | `100` | no |
| <a name="input_max_memory_util"></a> [max\_memory\_util](#input\_max\_memory\_util) | (Required) The target value for memory utilization scaling. | `number` | `80` | no |
| <a name="input_max_replicas"></a> [max\_replicas](#input\_max\_replicas) | (Required) The max capacity of the scalable target | `number` | `1` | no |
| <a name="input_min_replicas"></a> [min\_replicas](#input\_min\_replicas) | (Required) The min capacity of the scalable target. | `number` | `1` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | ECS service name | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
