# Terraform configuration for running a Consul cluster on AWS

This terraform configuration can be used to setup a Consul cluster on AWS with 3 availability zones. It makes use of the Terraform AWS module by Hashicorp (https://github.com/hashicorp/terraform-aws-consul)

## Start the cluster

0. Make sure your AWS environment is setup: ```AWS_ACCESS_KEY_ID```, ```AWS_SECRET_ACCESS_KEY```
1. Run ```terraform init```
2. Run ```terraform apply```
3. Run the ```scripts/get-cluster-info.sh``` script to get the IPs of your Consul cluster instances.

## Running the tests

Run ```bundle exec kitchen test```