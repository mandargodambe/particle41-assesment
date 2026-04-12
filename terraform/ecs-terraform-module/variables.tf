variable "aws_region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "A list of availability zones to use for the subnets."
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "public_subnet_cidrs" {
  description = "A list of CIDR blocks for the public subnets."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "A list of CIDR blocks for the private subnets."
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "alb_name" {
  description = "The name of the Application Load Balancer."
  type        = string
  default     = "ecs-alb"
}

variable "listener_port" {
  description = "The port on which the ALB will listen."
  type        = number
  default     = 80
}

variable "target_group_name" {
  description = "The name of the ALB target group."
  type        = string
  default     = "ecs-target-group"
}

variable "target_group_port" {
  description = "The port for the ALB target group."
  type        = number
  default     = 8080
}

variable "certificate_arn" {
  description = "The ARN of the ACM certificate for HTTPS listener."
  type        = string
  default     = ""
}

variable "health_check_path" {
  description = "Health check path for the ALB target group."
  type        = string
  default     = "/"
}

variable "health_check_interval" {
  description = "Interval for health checks in seconds."
  type        = number
  default     = 30
}

variable "health_check_timeout" {
  description = "Timeout for health checks in seconds."
  type        = number
  default     = 5
}

variable "health_check_healthy_threshold" {
  description = "Healthy threshold for ALB health checks."
  type        = number
  default     = 2
}

variable "health_check_unhealthy_threshold" {
  description = "Unhealthy threshold for ALB health checks."
  type        = number
  default     = 2
}

variable "cluster_name" {
  description = "The ECS cluster name."
  type        = string
  default     = "ecs-cluster"
}

variable "task_family" {
  description = "The ECS task definition family name."
  type        = string
  default     = "ecs-task"
}

variable "service_name" {
  description = "The ECS service name."
  type        = string
  default     = "ecs-service"
}

variable "container_image" {
  description = "The Docker image to use for the ECS task."
  type        = string
  default = "mandargodambe/assessment:latest"
}

variable "desired_count" {
  description = "The desired number of ECS task instances."
  type        = number
  default     = 1
}

variable "cpu" {
  description = "The CPU units for the ECS task definition."
  type        = string
  default     = "256"
}

variable "memory" {
  description = "The memory for the ECS task definition."
  type        = string
  default     = "512"
}

variable "container_name" {
  description = "The name of the container in the ECS task definition."
  type        = string
  default     = "app"
}

variable "container_cpu" {
  description = "The CPU units reserved for the container."
  type        = number
  default     = 256
}

variable "container_memory" {
  description = "The memory reserved for the container."
  type        = number
  default     = 512
}

variable "container_port" {
  description = "The container port exposed by the application."
  type        = number
  default     = 8080
}
