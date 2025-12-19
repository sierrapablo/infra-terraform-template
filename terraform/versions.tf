# Terraform version
# Use this file to define minimum version of Terraform required to run this code.

terraform {
  required_version = ">= 1.13"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }

    # Example:
    # aws = {
    #   source  = "hashicorp/aws"
    #   version = "~> 5.0"
    # }
  }

  backend "local" {
    path = "terraform.tfstate"
  }

  # Example with AWS S3:
  # backend "s3" {
  #   bucket = "my-terraform-state-bucket"
  #   key    = "terraform-project-name/terraform.tfstate"
  # }

  # Example with localstack and backend.hcl:
  # Use this if you are using localstack and backend.hcl
  # For init, use "terraform init "-backend-config=backend.hcl"
  # backend "s3" {}
}
