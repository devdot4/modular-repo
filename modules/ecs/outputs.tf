output "ecs_cluster_id" {
  description = "The ID of the ECS cluster."
  value       = aws_ecs_cluster.example.id
}

output "ecs_task_definition_arn" {
  description = "The ARN of the ECS task definition."
  value       = aws_ecs_task_definition.example.arn
}

output "ecs_service_id" {
  description = "The ID of the ECS service."
  value       = aws_ecs_service.example.id
}
