terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        # version = "~> 3.21" # optional, but recommended in production
    }
  }
}

provider "aws" {
    region = "us-east-1"
    # profile = "default" # AWS Credentials Profile configured on your local desktop
    # shared_credentials_file = "~/.aws/credentials"
}

resource "aws_instance" "ec2demo" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
}

## How to run
# terraform init # get the providers
# terraform validate # validate the configuration
# terraform plan # plan the changes, check what will happen
# terraform apply # apply the changes 
# terraform destroy # destroy the resources