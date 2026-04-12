variable "alb_name" {
  description = "The name of the Application Load Balancer."
  type        = string
}

variable "listener_port" {
  description = "The port on which the ALB will listen."
  type        = number
  default     = 80
}

variable "vpc_id" {
  description = "The VPC ID where the ALB will be deployed."
  type        = string
}

variable "public_subnet_ids" {
  description = "A list of public subnet IDs for the ALB."
  type        = list(string)
}

variable "target_group_name" {
  description = "The name of the target group."
  type        = string
  default     = ""
}

variable "target_group_port" {
  description = "The port used by the target group."
  type        = number
  default     = 8080
}

variable "certificate_arn" {
  description = "The ACM certificate ARN for HTTPS listener."
  type        = string
  default     = ""
}

variable "health_check_path" {
  description = "The health check path for the target group."
  type        = string
  default     = "/health"
}

variable "health_check_interval" {
  description = "Health check interval in seconds."
  type        = number
  default     = 30
}

variable "health_check_timeout" {
  description = "Health check timeout in seconds."
  type        = number
  default     = 5
}

variable "health_check_healthy_threshold" {
  description = "Healthy threshold for the ALB target group."
  type        = number
  default     = 2
}

variable "health_check_unhealthy_threshold" {
  description = "Unhealthy threshold for the ALB target group."
  type        = number
  default     = 2
}
