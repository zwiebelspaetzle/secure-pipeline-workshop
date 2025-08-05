output "load_balancer_dns" {
  description = "DNS name of the existing load balancer"
  value       = data.aws_lb.existing.dns_name
}

output "load_balancer_url" {
  description = "URL of the application"
  value       = "http://${data.aws_lb.existing.dns_name}"
}

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.app.repository_url
}

output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = aws_ecs_cluster.app.name
}

output "ecs_service_name" {
  description = "Name of the ECS service"
  value       = aws_ecs_service.app.name
}
