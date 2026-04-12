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
  description = "The ID of the VPC where the ECS service will be deployed."
  type        = string
}

variable "private_subnet_ids" {
  description = "A list of private subnet IDs where the ECS service will run."
  type        = list(string)
}

variable "task_role_arn" {
  description = "The ARN of the IAM role that the task can assume."
  type        = string
}

variable "execution_role_arn" {
  description = "The ARN of the IAM role that the ECS service can assume for pulling images."
  type        = string
}