# Define variables for the VPC and subnets

# CIDR block for the 'VPC'
variable "vpc_cidr_block" {
    description = "CIDR block for the VPC"
    type = string
    default = "10.0.0.0/16"
}

# CIDR block for the 'public subnet'
variable "public_subnet_cidr" {
    description = "CIDR block for the public subnet"
    type = string
    default = "10.0.1.0/24"
}

# CIDR block for the 'private subnet'
variable "private_subnet_cidr" {
    description = "CIDR block for the priavte subnet"
    type = string
    default = "10.0.2.0/24"
}