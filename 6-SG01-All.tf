#Ingress and Egress SGs

resource "aws_vpc_security_group_ingress_rule" "bastion_sg" {
  security_group_id = aws_security_group.bastion_sg.id

  cidr_ipv4   = "10.76.1.0/24"
  from_port   = 3389
  ip_protocol = "RDP"
  to_port     = 3389
}

resource "aws_vpc_security_group_ingress_rule" "ssh_sg" {
  security_group_id = aws_security_group.ssh_sg.id

  cidr_ipv4   = "10.75.14.0/24"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

resource "aws_vpc_security_group_ingress_rule" "http_sg" {
  security_group_id = aws_security_group.http_sg.id

  cidr_ipv4   = "10.75.14.0/24"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}

resource "aws_vpc_security_group_ingress_rule" "example" {
  security_group_id = aws_security_group.example.id

  cidr_ipv4   = "10.75.14.0/24"
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22
}

resource "aws_vpc_security_group_ingress_rule" "icmp_sg" {
  security_group_id = aws_security_group.icmp_sg.id

  cidr_ipv4   = "10.75.14.0/24"
  from_port   = -1
  ip_protocol = "icmp"
  to_port     = -1
}

