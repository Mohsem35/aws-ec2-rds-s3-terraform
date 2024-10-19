# Output the EC2 instance ID
output "ec2_instance_id" {
    value = module.ec2.ec2_instance_id
}

# Output the RDS endpoint
output "rds_endpoint" {
    value = module.rds.rds_endpoint
}

# Output the S3 bucket name
output "s3_bucket_name" {
    value = module.s3.s3_bucket_name
}