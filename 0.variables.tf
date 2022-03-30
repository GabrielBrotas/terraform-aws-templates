variable "aws_region" {
    description = "Region in which AWS resources will be deployed"
    type = string
    default = "us-east-1"
}

variable "ec2_instance_type" {
    description = "Instance type to launch"
    type = string
    default = "t2.micro"
    sensitive = false # if is something like a password, sensitive informations
}

variable "instance_keypair" {
    description = "Name of an existing EC2 KeyPair to enable SSH access to the instance"
    type = string
    default = "terraform-key"
}

## Variables - List
variable "instance_type_list" {
    description = "List of instance types to launch"
    type = list
    default = ["t2.micro", "t2.small", "t2.medium"]
}

variable "instance_type_map" {
    description = "Map of instance types to launch"
    type = map
    default = {
        "dev" = "t2.micro",
        "prod" = "t2.small",
        "qa" = "t2.medium",
    }
}

