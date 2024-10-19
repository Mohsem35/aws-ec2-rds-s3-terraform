# Define a subnet group for the RDS instance
resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = var.private_subnet_ids       # Reference the private subnet IDs

  tags = {
    Name = "MainSubnetGroup"
  }
}


# Define an RDS instance in the private subnet
# database will always be reside in private subnet


resource "aws_db_instance" "default" {
    allocated_storage = var.allocated_storage     # storage size
    engine = var.engine                     # database engine
    instance_class = var.instance_class     # instance class
    db_name = var.db_name              # database name
    username = var.username         # database username
    password = var.password         # database password
    parameter_group_name = var.parameter_group_name     # parameter group
    skip_final_snapshot = true      # skip final snapshot
    vpc_security_group_ids = [var.security_group_id]        # Attach the security group
    db_subnet_group_name = aws_db_subnet_group.main.name    # Reference the subnet group

}

# The aws_db_subnet_group resource is necessary for creating an Amazon RDS (Relational Database Service) instance within a 
# Virtual Private Cloud (VPC). This resource defines a group of subnets that RDS can use to place database instances. By 
# specifying a subnet group, you ensure that your RDS instances are placed in the appropriate subnets within your VPC, 
# which can be either private or public subnets depending on your architecture.
