# Terraform AWS Setup Documentation


## Table of Contents
1. Introduction
2. Project Structure
3. Prerequisites
4. Setup Instructions
5. Modules
    - VPC Module
    - EC2 Module
    - RDS Module
    - S3 Module
6. Cross-Account Access
7. Usage
8. Troubleshooting
9. Conclusion


### Introduction
This Terraform project sets up an AWS environment with the following components:

- A Virtual Private Cloud (VPC) with public and private subnets.
- An EC2 instance in the public subnet.
- An RDS instance in the private subnet.
- An S3 bucket.
- Cross-account access configuration.

```
terraform-aws-setup/
├── main.tf
├── variables.tf
├── outputs.tf
├── vpc/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
├── ec2/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
├── rds/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
├── s3/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
```

### Prerequisites
- AWS Account
- AWS CLI installed and configured
- Terraform installed

### Setup Instructions

1. Clone the Repository

```shell
git clone https://github.com/YOUR_GITHUB_USERNAME/aws-terraform-setup.git
cd aws-terraform-setup
```

2. Initialize Terraform

```shell
terraform init
```
3. Plan the Deployment

```shell
terraform plan
```

4. Apply the Configuration
```shell
terraform apply
```

Type `yes` when prompted to confirm the apply.


### Usage 

1. Initialize Terraform:

```shell
Plan the Deployment:
```
2. Apply the Configuration:

```shell
terraform plan
```
3. Apply the Configuration:

```shell
terraform apply
```