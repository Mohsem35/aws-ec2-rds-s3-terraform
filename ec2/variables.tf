# Define variables for the EC2 instance

# VPC ID
variable "vpc_id" {
    description = "VPC ID"
    type = string
}

# Public Subnet ID
variable "public_subnet_id" {
    description = "Public Subnet ID"
    type = string
}

# AMI ID
variable "ami_id" {
    description = "AMI ID"
    type = string
    default = "ami-00a3e0296e1731f44"     # aws ec2 describe-images --owners self amazon
}

# Instance type
variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t2.micro"
}