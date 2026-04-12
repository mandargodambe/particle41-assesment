# Terraform ECS Module

This module is responsible for deploying an Amazon ECS service that runs your Python application in a private subnet. It ensures that your application is securely hosted and can be accessed via an Application Load Balancer (ALB) deployed in the public subnet.

## Usage

To use this module, include it in your Terraform configuration as follows:

```hcl
module "ecs_application" {
  source          = "./terraform/ecs-terraform-module"
  container_image = "your-docker-image:latest"
  desired_count   = 2
  alb_name        = "my-alb"
  target_group_name = "my-target-group"
}
```

## Inputs

| Name            | Description                                   | Type   | Default | Required |
|-----------------|-----------------------------------------------|--------|---------|:--------:|
| container_image | The Docker image to use for the ECS task     | string | n/a     |   yes    |
| desired_count   | The desired number of ECS task instances      | number | 1       |   no     |
| ...             | Additional parameters as needed               |        |         |          |

## Outputs

| Name                | Description                                   |
|---------------------|-----------------------------------------------|
| service_name        | The name of the ECS service                   |
| task_definition_arn | The ARN of the ECS task definition            |
| ...                 | Additional outputs as needed                  |

## Example

```hcl
module "ecs" {
  source          = "./modules/ecs"
  container_image = "your-docker-image:latest"
  desired_count   = 2
}
```

## Notes

Ensure that the networking module is set up correctly to provide the necessary private subnets for the ECS service to run. The ECS service will be configured to communicate with the ALB for external access.