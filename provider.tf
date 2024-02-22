terraform {
  required_providers {
    aws = {
    source  = "hashicorp/aws"
      version = "~>5.37 "
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

#Optional credentials configuration
aws_access_key_id = AKIA6IZ5O2OHORYU7DEG
aws_secret_access_key = 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

