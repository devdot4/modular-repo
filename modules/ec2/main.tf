provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  tags = {
    Name = var.instance_name
  }

  security_groups = var.security_groups

  // Example of user_data for instance customization
  user_data = <<-EOF
    #!/bin/bash
    echo "Hello, World!" > index.html
    nohup busybox httpd -f -p ${var.instance_port} &
    EOF
}

output "instance_id" {
  description = "The ID of the instance."
  value       = aws_instance.example.id
}

output "instance_public_ip" {
  description = "The public IP address of the instance."
  value       = aws_instance.example.public_ip
}

output "instance_private_ip" {
  description = "The private IP address of the instance."
  value       = aws_instance.example.private_ip
}
