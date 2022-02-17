variable "aws_region" {
  type        = string
  description = "The AWS region that we are working in"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "The aws profile (or environment_name) (dev, qa, prod)"
}

variable "docker_image_tag" {
  type        = string
  description = "Which ECR Image tag to use"
  default     = "latest" # apprunner looks for the lastest tag to deploy off
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the app runner service"
}

variable "service_port" {
  type = string
}

variable "app_name" {
  type        = string
  description = "The name of the app"
}

variable "environment_variables" {
  type        = map(string)
  description = "Environment variables available to your running App Runner service. A map of key/value pairs"
}

variable "auto_scaling_min_size" {
  type        = number
  default     = 1
  description = "The minimum number of instances to run for the service. Defaults to 1. Minimum value of 1. Maximum value of 25"
}

variable "auto_scaling_max_size" {
  type        = number
  default     = 5
  description = "The maximum number of instances to run for the service. Defaults to 5. Minimum value of 1. Maximum value of 25"
}

variable "auto_deployments" {
  type        = bool
  default     = true
  description = "Whether or not to automatically deploy new code to the service. Defaults to true"
}

variable "ecr_repository_url" {
  type        = string
  description = "The ECR repository URL to use for the service"
}
