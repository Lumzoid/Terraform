terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}

provider "aws" {
  region     = "ca-central-1"
  access_key = "***"
  secret_key = "***"
  # Configuration options
}