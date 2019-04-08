# Terrform configuration to create S3 bucket and DynamoDB for remote state

If you are working on your Terraform code as a team, you want to store the state in some remote backend. One option is to use S3 to store state and a Dynamo-DB for locking (see https://www.terraform.io/docs/backends/index.html). This project contains a Terraform config to setup these resources.

Run ```terraform init``` and ```terraform apply``` to setup an S3 bucket to store Terraform state and a DynamoDB for Terraform locking.

To make use of the new backend, add something like this to your Terraform configuration:

```
terraform {
  backend "s3" {
    bucket = "tf-state"
    key    = "terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "tf-state-lock"
  }
}
```