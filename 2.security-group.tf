resource "aws_security_group" "sg-instance-ssh" {
  name = "terraform-sg-instance-ssh-access"
  description = "Enable SSH access via port 22"

  ingress {
    description = "Allow all inbound traffic to access ssh"
    protocol = "tcp"
    from_port = 22
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    protocol = "-1"
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = "terraform-sg-instance-ssh-access"
  }
}

resource "aws_security_group" "sg-instance-public-access" {
  name = "terraform-sg-httpd-public-access"
  description = "Security group for ec2 instance allow public access"

  ingress {
    description = "Allow all http inbound traffic to access instance"
    protocol = "tcp"
    from_port = 80
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow all https inbound traffic to access instance"
    protocol = "tcp"
    from_port = 443
    to_port = 443
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    protocol = "-1"
    from_port = 0
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = "terraform-sg-httpd-public-access"
  }
}