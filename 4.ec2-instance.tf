# EC2 instance
resource "aws_instance" "ec2demo" {
  # ami = "ami-0c02fb55956c7d316"
  # instance_type = "t2.micro"
  # instance_type = var.ec2_instance_type
  # instance_type = var.instance_type_list[0] # get value from list
  # instance_type = var.instance_type_map["prod"] # get value from map

  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type_map["dev"] # get value from map

  key_name = var.instance_keypair
  user_data = file("${path.module}/scripts/httpd-install.sh")

  associate_public_ip_address = true
  
  vpc_security_group_ids = [ aws_security_group.sg-instance-ssh.id, aws_security_group.sg-instance-public-access.id ]

  # count = 2 # number of instances

  tags = {
    # Name = "httpd-demo-from-terraform-${count.index}",
    Name = "httpd-demo-from-terraform",
    Environment = "dev",
  }  
}