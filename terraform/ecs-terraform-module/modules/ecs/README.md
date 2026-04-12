# ECS Module

This module is responsible for deploying the ECS service that runs your Python application in a containerized environment. It ensures that the application is hosted in private subnets for security and scalability.

## Usage

To use this module, include it in your Terraform configuration as follows:

```hcl
module "ecs" {
  source          = "./modules/ecs"
  container_image = var.container_image
  desired_count   = var.desired_count
  vpc_id          = module.networking.vpc_id
  subnet_ids      = module.networking.private_subnet_ids
  ...
}
```

## Inputs

| Name            | Description                                      | Type   | Default | Required |
|-----------------|--------------------------------------------------|--------|---------|----------|
| container_image | The Docker image to use for the ECS task        | string | n/a     | yes      |
| desired_count   | The number of desired task instances             | number | 1       | no       |
| vpc_id          | The ID of the VPC where the ECS service will run| string | n/a     | yes      |
| subnet_ids      | List of subnet IDs for the ECS service          | list   | n/a     | yes      |
| ...             | Additional parameters as needed                  | ...    | ...     | ...      |

## Outputs

| Name                | Description                                   |
|---------------------|-----------------------------------------------|
| service_name        | The name of the ECS service                   |
| task_definition_arn | The ARN of the ECS task definition            |
| ...                 | Additional outputs as needed                  |