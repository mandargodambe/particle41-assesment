variable "container_image" {
  description = "The Docker image to use for the ECS task."
  type        = string
}

variable "desired_count" {
  description = "The desired number of ECS task instances."
  type        = number
  default     = 1
}

variable "vpc_id" {
  description = "The ID of the VPC where ECS service will run."
  type        = string
}

variable "private_subnet_ids" {
  description = "A list of private subnet IDs for ECS tasks."
  type        = list(string)
}

variable "cluster_name" {
  description = "The name of the ECS cluster."
  type        = string
  default     = "ecs-cluster"
}

variable "task_family" {
  description = "The ECS task definition family name."
  type        = string
  default     = "ecs-task"
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

variable "service_name" {
  description = "The name of the ECS service."
  type        = string
  default     = "ecs-service"
}

variable "container_name" {
  description = "The name of the container in the task definition."
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

variable "target_group_arn" {
  description = "The ARN of the ALB target group to attach to the service."
  type        = string
}

variable "alb_security_group_id" {
  description = "The security group ID for the ALB to allow ingress from."
  type        = string
  default     = ""
}
