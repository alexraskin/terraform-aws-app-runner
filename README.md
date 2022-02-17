# terraform-aws-app-runner

This module will create an app runner service

- An ECR Repo is required for this module to work

```hlc
module "app_runner_service" {
  source = "git@github.com:alexraskin/terraform-aws-app-runner.git?ref=3aa555ea705a93cb272e33ce086918ba38ece06e"
  app_name                   = var.app_name
  aws_region                 = var.aws_region
  ecr_repository_url         = var.ecr_repository_url
  tags                       = local.tags
  service_port               = var.service_port
  auto_scaling_max_size      = var.auto_scaling_max_size
  environment_variables      = var.environment_variables
}
```