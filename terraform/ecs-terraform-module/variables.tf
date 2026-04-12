variable "aws_region" {
  description = "The AWS region where resources will be created."
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "availability_zones" {
  description = "A list of availability zones to use for the subnets."
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for the public subnets."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for the private subnets."
  type        = list(string)
}

variable "alb_name" {
  description = "The name of the Application Load Balancer."
  type        = string
}

variable "listener_port" {
  description = "The port on which the ALB will listen."
  type        = number
}

variable "target_group_name" {
  description = "The name of the ALB target group."
  type        = string
}

variable "target_group_port" {
  description = "The port for the ALB target group."
  type        = number
}

# variable "certificate_arn" {
#   description = "The ARN of the ACM certificate for HTTPS listener."
#   type        = string
# }

variable "health_check_path" {
  description = "Health check path for the ALB target group."
  type        = string
}

variable "health_check_interval" {
  description = "Interval for health checks in seconds."
  type        = number
}

variable "health_check_timeout" {
  description = "Timeout for health checks in seconds."
  type        = number
}

variable "health_check_healthy_threshold" {
  description = "Healthy threshold for ALB health checks."
  type        = number
}

variable "health_check_unhealthy_threshold" {
  description = "Unhealthy threshold for ALB health checks."
  type        = number
}

variable "cluster_name" {
  description = "The ECS cluster name."
  type        = string
}

variable "task_family" {
  description = "The ECS task definition family name."
  type        = string
}

variable "service_name" {
  description = "The ECS service name."
  type        = string
}

variable "container_image" {
  description = "The Docker image to use for the ECS task."
  type        = string
}

variable "desired_count" {
  description = "The desired number of ECS task instances."
  type        = number
}

variable "cpu" {
  description = "The CPU units for the ECS task definition."
  type        = string
}

variable "memory" {
  description = "The memory for the ECS task definition."
  type        = string
}

variable "container_name" {
  description = "The name of the container in the ECS task definition."
  type        = string
}

variable "container_cpu" {
  description = "The CPU units reserved for the container."
  type        = number
}

variable "container_memory" {
  description = "The memory reserved for the container."
  type        = number
}

variable "container_port" {
  description = "The container port exposed by the application."
  type        = number
}
