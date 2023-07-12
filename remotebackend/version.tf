terraform {
  backend "s3" {
    bucket = "taiwo23-terraform-state"
    key    = "Dev/dev.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}
