output "instance_ids" {
  description = "List of the instances ID's"
  value       = aws_instance.my_instances[*].id
}
