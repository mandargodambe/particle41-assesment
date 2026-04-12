variable "alb_name" {
  description = "The name of the Application Load Balancer"
  type        = string
}

variable "listener_port" {
  description = "The port on which the ALB will listen"
  type        = number
  default     = 80
}

variable "vpc_id" {
  description = "The VPC ID where the ALB will be deployed"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs for the ALB"
  type        = list(string)
}

variable "target_group_name" {
  description = "The name of the target group for the ALB"
  type        = string
}

variable "health_check_path" {
  description = "The path for health checks"
  type        = string
  default     = "/"
}

variable "health_check_interval" {
  description = "The interval between health checks in seconds"
  type        = number
  default     = 30
}

variable "health_check_timeout" {
  description = "The timeout for health checks in seconds"
  type        = number
  default     = 5
}

variable "health_check_healthy_threshold" {
  description = "The number of consecutive health checks successes required before considering an unhealthy target healthy"
  type        = number
  default     = 2
}

variable "health_check_unhealthy_threshold" {
  description = "The number of consecutive health check failures required before considering a target unhealthy"
  type        = number
  default     = 2
}