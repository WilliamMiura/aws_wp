provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "machine_wp" {
  ami = "${var.amis["us-east-1-ubuntu20"]}"
  instance_type = "${var.instance_type.micro}"
  key_name = "terraform_aws"
  tags = {
    name = "vm_ansble_w_wordpress"
  }
  vpc_security_group_ids = ["${aws_security_group.any_access.id}"]
}