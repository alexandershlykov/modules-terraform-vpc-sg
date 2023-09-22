variable "vpc_id" {
  description = "ID VPC"
}

variable "name" {
  description = "The name of the security group."
  default     = "Main VPC Security Group"
}

variable "environment" {
  description = "The environment for the security group (dev, prod, test, etc.)"
  default     = "test"
}


variable "dev_allowed_ports" {
  description = "List of allowed ports in the dev environment."
  type        = list(string)
  default     = ["80", "443"]
}

variable "prod_allowed_ports" {
  description = "List of allowed ports in the prod environment."
  type        = list(string)
  default     = ["443"]
}

variable "test_allowed_ports" {
  description = "List of allowed ports in the test environment."
  type        = list(string)
  default     = ["80"]
}

variable "ssh_cidr_block" {
  description = "CIDR block for SSH access."
  type        = string
  default     = "0.0.0.0/0"
}

variable "egress_cidr_block" {
  description = "CIDR block for egress traffic."
  type        = string
  default     = "0.0.0.0/0"
}


