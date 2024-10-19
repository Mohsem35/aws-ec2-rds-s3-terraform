# Output the EC2 instance ID

output "ec2_instance_id" {
    value = aws_instance.web.id
}

# Output the Security Group ID
output "ec2_sg_id" {
  value = aws_security_group.ec2_sg.id
}