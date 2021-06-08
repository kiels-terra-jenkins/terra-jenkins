terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
//provider and region used for IaC.
provider "aws" {
  profile = "default"
  region  = "us-west-1"
}
//Code for T2 instances.
resource "aws_instance" "i1" {
  ami                    = "ami-047a51fa27710816e"
  instance_type          = lookup(var.t2_instances, "t2_nano", "t2.nano")
  vpc_security_group_ids = ["sg-41e45e76"]
  subnet_id              = "subnet-f37efc95"
  count                  = var.ec2_count_i1
  tags = {
    Name = "i1"
  }
}