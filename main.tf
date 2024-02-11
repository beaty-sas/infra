terraform {
  required_version = ">= 1.2.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.8.0"
    }
  }
  backend "s3" {
    bucket                      = "reserve-tf-state"
    key                         = "terraform.tfstate"
    region                      = "eu-central-1"
    skip_credentials_validation = true
  }
}
