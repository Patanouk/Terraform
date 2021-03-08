output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.terraform-tutorial.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.terraform-tutorial.public_ip
}