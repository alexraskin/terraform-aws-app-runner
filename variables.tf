variable "aws_region" {
  type        = string
  description = "The AWS region that we are working in"
  default     = "us-east-1"
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

variable "service_cpu" {
  type        = number
  description = "The number of cpu's to allocate to the service"
  default     = 1024 # valid values: 1024|2048|(1|2) vCPU
}

variable "service_memory" {
  type        = number
  description = "The amount of memory to allocate to the service"
  default     = 2048 # valid values: 2048|3072|4096|(2|3|4) GB
}

variable "service_healthy_threshold" {
  type        = number
  default     = 5
  description = "The number of consecutive checks that must succeed before App Runner decides that the service is healthy. Defaults to 5. Minimum value of 1. Maximum value of 20."
}

variable "service_interval" {
  type        = number
  default     = 5
  description = "The time interval, in seconds, between health checks. Defaults to 5. Minimum value of 1. Maximum value of 20."
}

variable "service_health_check_path" {
  type        = string
  default     = "/"
  description = " The URL to send requests to for health checks. Defaults to /. Minimum length of 0. Maximum length of 51200."
}

variable "protocol" {
  type        = string
  default     = "TCP"
  description = "The IP protocol that App Runner uses to perform health checks for your service. Valid values: TCP, HTTP. Defaults to TCP. If you set protocol to HTTP, App Runner sends health check requests to the HTTP path specified by path."
}

variable "timeout" {
  type        = number
  default     = 2
  description = " The time, in seconds, to wait for a health check response before deciding it failed. Defaults to 2. Minimum value of 1. Maximum value of 20."
}

variable "unhealthy_threshold" {
  type        = number
  default     = 5
  description = "The number of consecutive checks that must fail before App Runner decides that the service is unhealthy. Defaults to 5. Minimum value of 1. Maximum value of 20."

}
