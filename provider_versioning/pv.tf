terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 3.3.9, <=4.0"
    }
  }
}

provider "aws" {
    region = "eu-west-2"
}

# terrafrom init -upgrade will overwrite the loack.hcl file version after you modified the resource provider version variable.