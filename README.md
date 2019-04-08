# Terraform configuration for running a Consul cluster on AWS

This project contains Packer (https://packer.io) and Terraform (https://terraform.io) configurations to setup a Consul cluster (https://www.consul.io) on AWS with 3 availability zones. It makes use of the Terraform AWS module by Hashicorp (https://github.com/hashicorp/terraform-aws-consul):

## Modules

This project consists of three modules

### [packer](./packer)

A Packer configuration to create the required AMI with Consul installed.

### [terraform](./terraform)

A Terraform configuration to setup a Consul cluster on AWS with 3 availability zones.

### [terraform-remote-state](./terraform-remote-state)

A Terraform configuration to setup backend resources for Terraform.

## How to create the Consul cluster

0. Make sure your AWS environment is setup: ```AWS_ACCESS_KEY_ID```, ```AWS_SECRET_ACCESS_KEY```
1. Optional: Create S3 bucket and Dynamo-DB for Terraform. See: [terraform-remote-state/README.md](terraform-remote-state/README.md).
2. Go to ```packer``` directory and adapt consul version in ```consul.json``` as required. 
3. Create your own Consul AMI by running: ```packer build consul.json```
4. Go to ```terraform``` directory and adapt ```ami_id``` in ```terraform.tfvars``` to match your AMI ID
5. Run ```terraform init``` and ```terraform apply```
6. Run the ```scripts/get-cluster-info.sh``` script to get the IPs of your Consul cluster instances.