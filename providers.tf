terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.32.1"
    }
  }
}
provider "aws" {
	alias = "us_east_1"
	region = "us-east-1"
}
provider "aws" {
        alias = "us_east_2"
        region = "us-east-2"
}
provider "aws" {
        alias = "ap_south_1"
        region = "ap-south-1"
}
