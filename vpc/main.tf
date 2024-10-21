# 'VPC' with CIDR block
resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr_block
}

# 'Public Subnet' within the VPC 
resource "aws_subnet" "public" {
    vpc_id                  = aws_vpc.main.id                # Reference the VPC ID
    cidr_block              = var.public_subnet_cidr     # CIDR block for the public subnet
    map_public_ip_on_launch = true                   # Automatically assign a public IP to instances in this subnet
}

# 'Private Subnet' within the VPC 
resource "aws_subnet" "private" {
    vpc_id = aws_vpc.main.id                 # Reference the VPC ID
    cidr_block = var.private_subnet_cidr     # CIDR block for the public subnet
}

# 'Internet Gateway' for the VPC
resource "aws_internet_gateway" "main" {
    vpc_id = aws_vpc.main.id                # Reference the VPC ID
}

# We need 'Route Table' for public subnet 
resource "aws_route_table" "public" {
    vpc_id = aws_vpc.main.id                # Reference the VPC ID


    route {
        cidr_block = "0.0.0.0/0"            # Route all traffic
        gateway_id = aws_internet_gateway.main.id           # Reference the Internet Gateway
    }
}

# Flow: 1. internet gateway 2. route table (ref. internet gateway) 3. attach route tabel to public subnet
# route table 
# Now associate the route table with the public subnet
resource "aws_route_table_association" "public" {
    subnet_id = aws_subnet.public.id                    # Reference the public subnet ID
    route_table_id = aws_route_table.public.id          # Reference the route table ID
}