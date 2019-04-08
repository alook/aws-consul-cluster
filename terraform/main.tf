# For real world use, enable a remote backend for Terraform state and locking
# See ../terraform-remote-state for more.

provider "aws" {
  region     = "${var.aws_region}"
}

resource "aws_key_pair" "consul_ec2_keypair" {
  key_name   = "${var.public_key_name}"
  public_key = "${var.public_key_value}"
}

module "consul" {
  source = "hashicorp/consul/aws"
  version = "0.6.0"
  cluster_name="${var.cluster_name}"
  num_servers = "${var.num_servers}"
  num_clients = "${var.num_clients}"
  ami_id = "${var.ami_id}"
  ssh_key_name="${var.public_key_name}"
}