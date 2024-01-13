terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.32.1"
    }
  }
}

provider "aws" {
  alias = "your_aws_region_1"
  region = "your_aws_region"
}

provider "aws" {
  alias = "your_aws_region_2"
  region = "your_aws_region"
}


