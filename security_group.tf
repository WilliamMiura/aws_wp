resource "aws_security_group" "any_access" {
  name = "any_access"
  description = "lab with any access"
  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    description = " to access machines for all ports"
    from_port = 0
    ipv6_cidr_blocks = [
      "::/0"
    ]
    prefix_list_ids = []
    protocol = "-1"
    security_groups = []
    self = false
    to_port = 0
  }

  egress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]
    description = ""
    from_port = 0
    ipv6_cidr_blocks = [
      "::/0"
    ]
    prefix_list_ids = []
    protocol = "-1"
    security_groups = []
    self = false
    to_port = 0
  }

  tags = {
    name = "any_access"}
}