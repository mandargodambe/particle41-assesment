# ALB Module

This module is responsible for creating an Application Load Balancer (ALB) in the public subnets of the VPC. It includes the necessary configurations for listeners and target groups to route traffic to the ECS service running in private subnets.

## Usage

To use this module, include it in your Terraform configuration as follows:

```hcl
module "alb" {
  source          = "./modules/alb"
  alb_name        = var.alb_name
  listener_port   = var.listener_port
  vpc_id          = var.vpc_id
  subnet_ids      = var.public_subnet_ids
  target_group_name = var.target_group_name
}
```

## Inputs

| Name              | Description                                   | Type   | Default | Required |
|-------------------|-----------------------------------------------|--------|---------|:--------:|
| alb_name          | The name of the ALB                           | string | n/a     |   yes    |
| listener_port     | The port on which the ALB will listen         | number | 80      |   no     |
| vpc_id            | The ID of the VPC where the ALB will be created | string | n/a     |   yes    |
| public_subnet_ids | List of public subnet IDs for the ALB         | list   | n/a     |   yes    |
| target_group_name | The name of the target group for the ALB      | string | n/a     |   yes    |

## Outputs

| Name                | Description                                   |
|---------------------|-----------------------------------------------|
| alb_dns_name        | The DNS name of the ALB                      |
| alb_arn             | The ARN of the ALB                           |
| target_group_arn    | The ARN of the target group                  |

## Example

```hcl
module "alb" {
  source          = "./modules/alb"
  alb_name        = "my-alb"
  listener_port   = 80
  vpc_id          = module.networking.vpc_id
  public_subnet_ids = module.networking.public_subnet_ids
  target_group_name = "my-target-group"
}
```

This example demonstrates how to instantiate the ALB module with the required parameters. Adjust the values as necessary for your specific use case.