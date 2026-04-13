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