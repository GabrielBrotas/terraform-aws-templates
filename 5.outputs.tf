# Terraform output values that will be printed to the console

output "instance-public-ip" {
    value = aws_instance.ec2demo.public_ip
    description = "EC2 instance public IP"
}

output "instance-public-dns" {
    value = aws_instance.ec2demo.public_dns
    description = "EC2 instance public DNS"
}

## Output for loop with list, we can use if the instance has the count parameter
# output "for-output-list" { 
#     description = "For loop with list"
#     value = [
#         for instance in aws_instance.ec2demo: instance.public_dns
#     ]
# }

# ## Output for loop with map
# output "for_output_map" {
#     description = "For loop with map"
#     value = {
#         for c, instance in aws_instance.ec2demo: c => instance.public_dns
#     }

# }