# Specify the AWS provider and region
provider "aws" {
    region = "us-east-1"
}

# Reference the VPC module
module "vpc" {
    source = "./vpc"
}

# Reference the EC2 module
module "ec2" {
    source = "./ec2"
    vpc_id = module.vpc.vpc_id
    public_subnet_id = module.vpc.public_subnet_id
    ami_id = "ami-00a3e0296e1731f44"
    instance_type = "t2.micro"
}


# Reference the RDS module
module "rds" {
    source = "./rds"
    allocated_storage = 20
    engine = "mysql"
    instance_class = "db.t2.micro" 
    db_name = "malydb"
    username = "admin"
    password = "password"
    parameter_group_name = "default.mysql5.7"
    security_group_id = module.ec2.ec2_sg_id
    private_subnet_ids = [module.vpc.private_subnet_id]
}

# Referencen the S3 module
module "s3" {
    source = "./s3"
    bucket_name = "maly-bucket"
}