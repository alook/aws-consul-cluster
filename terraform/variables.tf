# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region to deploy the cluster to."
}

variable "ami_id" {
  description = "The ID of the AMI to run in the cluster. This should be an AMI built from the Packer template under packer/consul.json."
}

variable "cluster_name" {
  description = "The name of the cluster."
}

variable "public_key_name" {
  description = "The name of the public key to use for the EC2 instances"
  default     = "ec2-consul-key"
}

variable "public_key_value" {
  description = "The public key to use for the EC2 instances"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTzfO/OLE95AmSVTEkQ43q9+0iT1P7LFkWN64XusWQ85hbvw1nu9mI67r+jHFB4/kP+Ec5rpGVhAhZrDIYc1/sPGfj9EMnyp98BZI3wBonycIoIgJey3r8qrtTcKZyOo9h1+RYOyRdXPzSCp7ga25BC4JWs8zKr6aQx2bhMSsd6rX6zgIkVxgF00GbvVMqbQ4xTZjrgZQjAJTWusmWiGXXPwPmSA8FvAXHDte8lRgZJhFsD2Si6QUburFni5r77SZA3tmMt/NaSuf6eEDPMLyGuZi0h7rcSeNy3gRoEj496N3oiHMCmo4F2ooYftc3qC0c6pvz36VEMCE1J6WbBAaJ email@example.com"
}

variable "num_servers" {
  description = "The number of Consul server nodes to deploy. We strongly recommend using 3 or 5."
  default     = 3
}

variable "num_clients" {
  description = "The number of Consul client nodes to deploy. You typically run the Consul client alongside your apps, so set this value to however many Instances make sense for your app code."
  default     = 0
}
