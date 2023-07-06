variable "amis" {
  default = {
    "us-east-1-ubuntu20"="ami-0261755bbcb8c4a84",
    "us-east-1-ubuntu22"="ami-053b0d53c279acc90",
    "us-east-2-ubuntu20"="ami-0430580de6244e02e"
  }
}

variable "instance_type" {
  default = {
    "micro" = "t2.micro"
  }
}