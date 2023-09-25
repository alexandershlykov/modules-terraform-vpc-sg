variable "vpc_id" {
  description = "ID VPC"
}

variable "security_group_id" {
  description = "ID Security Group"
}

variable "subnets" {
  description = "List of the subnets for create instances"
  type        = list(string)
}

variable "instance_types" {
  description = "List of the types instances by environments"
  type        = map(string)
}
