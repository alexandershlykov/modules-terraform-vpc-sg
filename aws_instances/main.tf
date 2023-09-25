resource "aws_instance" "servers" {
  count           = length(var.subnets)
  ami             = data.aws_ami.latest_amazon_linux.id
  instance_type   = lookup(var.instance_types, element(var.subnets, count.index))
  subnet_id       = element(var.subnets, count.index)
  security_groups = [var.security_group_id]

  tags = {
    Name = "Server Number ${count.index + 1}"
  }
}

