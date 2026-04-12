# Networking Module

This module is responsible for creating the networking layer required for the application. It sets up a Virtual Private Cloud (VPC) with both public and private subnets, ensuring that the application's compute resources (ECS containers) run in private subnets only. The module also provisions necessary networking components such as route tables and internet gateways.

## Usage

To use this module, include it in your Terraform configuration as follows:

```hcl
module "networking" {
  source = "./modules/networking"

  vpc_cidr          = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}
```

## Inputs

| Name                   | Description                                   | Type          | Default | Required |
|------------------------|-----------------------------------------------|---------------|---------|----------|
| vpc_cidr               | The CIDR block for the VPC                   | string        | n/a     | yes      |
| public_subnet_cidrs    | A list of CIDR blocks for public subnets     | list(string)  | n/a     | yes      |
| private_subnet_cidrs   | A list of CIDR blocks for private subnets    | list(string)  | n/a     | yes      |

## Outputs

| Name                | Description                                   |
|---------------------|-----------------------------------------------|
| vpc_id              | The ID of the created VPC                    |
| public_subnet_ids   | A list of IDs of the created public subnets   |
| private_subnet_ids  | A list of IDs of the created private subnets  |