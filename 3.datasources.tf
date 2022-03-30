# data sources allow data to be fetched or computed for use elsewhere in terraform configuration
# use of data sources allows a terraform configuration to make use of information outside of Terraform, or defined by another separate Terraform configuration

# first parameter is the name of the data source
# second parameter is the local name
data "aws_ami" "amzlinux2" {
  most_recent      = true
  owners           = ["self", "amazon"]

  filter {
    name   = "name"
    # we can find the available images name on https://us-east-1.console.aws.amazon.com/ec2/v2/home?region=us-east-1#Images:visibility=public-images
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20220316.0-x86_64-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}