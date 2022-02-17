output "service_url" {
  value = aws_apprunner_service.runner_service.service_url
}

output "service_status" {
  value = aws_apprunner_service.runner_service.status
}

output "service_id" {
  value = aws_apprunner_service.runner_service.id
}

output "service_arn" {
  value = aws_apprunner_service.runner_service.arn
}