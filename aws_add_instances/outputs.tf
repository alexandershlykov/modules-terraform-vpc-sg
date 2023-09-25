output "instance_ids" {
  description = "List of the instances ID's"
  value       = aws_instance.servers[*].id
}
