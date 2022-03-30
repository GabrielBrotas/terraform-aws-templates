# Terraform block
terraform {
    # run terraform version on your terminal to see the version
    required_version = "~> 0.14" # alows 0.14.xx and deny 0.2.xx and 1.13.xx
    # any other version will be rejected

    required_providers {
        # aws is the local name of your provider, it should be unique per module
        # terraform configurations always refer to local name of provider outside required_provider block
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }

}

# Provider Block
provider "aws" {
    # region = "us-east-1"
    region = var.aws_region
}

# Resource Block
# the first label is the resource name, it determines the kind of infrastructure object it manages and what arguments and other attributes the resouce supports
# the second is the local name, it is used to refer to this resource from elsewhere in the same terraform module, but has no significance outisde that module's scope
# the resource type and name together serve as an identifier for a given resource and so must be unique within a module
# resource "aws_vpc" "vpc_us-east-1" {
#     cidr_block = "10.10.0.0/16"
#     enable_dns_hostnames = true
#     enable_dns_support = true
    
# }