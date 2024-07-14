variable "region" {
  description = "The AWS region to deploy the resources in."
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to launch, e.g., t2.micro."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance into."
  type        = string
}

variable "key_name" {
  description = "The name of the EC2 key pair to associate with the instance."
  type        = string
}

variable "security_groups" {
  description = "A list of security group IDs to associate with the instance."
  type        = list(string)
}

variable "instance_name" {
  description = "The name of the EC2 instance."
  type        = string
}

variable "instance_port" {
  description = "The port number to be used for the instance."
  type        = number
}
