variable "region" {
  description = "The AWS region to deploy the resources in."
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name of the ECS cluster."
  type        = string
}

variable "task_family" {
  description = "The family of the ECS task definition."
  type        = string
}

variable "task_cpu" {
  description = "The number of CPU units used by the task."
  type        = string
}

variable "task_memory" {
  description = "The amount of memory (in MiB) used by the task."
  type        = string
}

variable "container_name" {
  description = "The name of the container."
  type        = string
}

variable "container_image" {
  description = "The Docker image to use for the container."
  type        = string
}

variable "container_port" {
  description = "The port number on the container that is bound to the specified host port."
  type        = number
}

variable "service_name" {
  description = "The name of the ECS service."
  type        = string
}

variable "desired_count" {
  description = "The number of instances of the task definition to place and keep running."
  type        = number
}

variable "subnet_ids" {
  description = "The subnets associated with the task or service."
  type        = list(string)
}

variable "security_group_ids" {
  description = "The security groups associated with the task or service."
  type        = list(string)
}
