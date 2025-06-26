terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }
  backend "s3" {
    bucket               = "devops-recipe-terraform-api"
    region               = "us-east-1"
    encrypt              = true
    key                  = "tf-state-deploy"
    workspace_key_prefix = "tf-state-deploy-env"
    dynamodb_table       = "devops-recipe-api-lock-table"
  }

}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManageBy    = "Terraform/deploy"
    }
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
}

data "aws_region" "current" {}
