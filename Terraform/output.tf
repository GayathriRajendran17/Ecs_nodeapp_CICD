output "aws_region" {
  value       = local.region
  description = "The AWS region used"
}

output "app_url" {
  value       = aws_lb.alb.dns_name
  description = "The public ALB DNS"
}


# output "ecr_url" {
#   value       = aws_ecr_repository.repository.repository_url
#   description = "The ECR repository URL"
# }

# output "ecr_repository_name" {
#   value       = aws_ecr_repository.repository.name
#   description = "The ECR repository name"
# }

output "ecs_cluster" {
  value       = aws_ecs_cluster.cluster.name
  description = "The ECS cluster name"
}

output "ecs_service" {
  value       = aws_ecs_service.service.name
  description = "The ECS service name"
}

output "container_name" {
  value       = local.container.name
  description = "Container name for the ECS task"
}
