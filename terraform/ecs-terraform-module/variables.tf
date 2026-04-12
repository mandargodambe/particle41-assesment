variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for the public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for the private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "A list of availability zones to use for the subnets"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Whether to enable a NAT gateway for the private subnets"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}

variable "aws_region" {
  type        = string
  description = "The AWS region to deploy the resources in"
  default = "ap-south-1"
}