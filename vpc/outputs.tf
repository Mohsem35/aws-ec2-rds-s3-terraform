# Output the IDs of the VPC and subnets

# output the 'VPC' ID
output "vpc_id" {
    value = aws_vpc.main.id
}

# output the 'public subnet' ID
output "public_subnet_id" {
    value = aws_subnet.public.id
}

# output the 'private subnet' ID
output "private_subnet_id" {
    value = aws_subnet.private.id
}