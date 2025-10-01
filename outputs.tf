output "instance_public_ip" {
  description = "Public IPs of the EC2 instances"
  value       = aws_instance.my_instance[*].public_ip
}

output "instance_private_ip" {
  description = "Private IPs of the EC2 instances"
  value       = aws_instance.my_instance[*].private_ip
}


