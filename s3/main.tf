# acl = "priavte": Owner gets full control. No one else has access rights
# Access control list. It is used to define the level of access permissions for the S3 bucket

resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
                
}

# Define the ACL for the S3 bucket
resource "aws_s3_bucket_acl" "bucket_acl" {
    bucket = aws_s3_bucket.bucket.id
    acl = "private" 
}