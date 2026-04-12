# Terraform ECS Module

This module is responsible for deploying an Amazon ECS service that runs your Python application in a private subnet. It ensures that your application is securely hosted and can be accessed via an Application Load Balancer (ALB) deployed in the public subnet.

## Backend Configuration

This module supports both local and S3 backends for Terraform state management.

### Local State (Default)
If no S3 bucket is provided, Terraform will use local state files.

```bash
terraform init
```

### S3 Backend
To use S3 for state storage, provide the S3 bucket name during initialization:

```bash
terraform init -backend-config="bucket=your-s3-bucket-name"
```

**Note:** Ensure the S3 bucket exists and you have appropriate permissions. The state will be stored at `terraform/state` in the bucket.

## Usage

To use this module, initialize Terraform and apply the configuration:

```bash
terraform init
terraform plan
terraform apply
```

Variable values are defined in `terraform.tfvars`. You can override them using `-var` flags or additional `.tfvars` files.

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