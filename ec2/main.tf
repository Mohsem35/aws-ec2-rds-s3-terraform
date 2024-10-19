# Define a security group for the EC2 instance
resource "aws_security_group" "ec2_sg" {
    vpc_id = var.vpc_id                         # Reference the VPC ID

    ingress {
        from_port = 22          # SSH access
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"] 
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"             # All protocols (TCP, UDP, ICMP)
        cidr_blocks = ["0.0.0.0/0"]
    }
}


# Launch an EC2 instance in the public subnet
resource "aws_instance" "web" {
    ami = var.ami_id                                    # AMI ID for the instance
    instance_type = var.instance_type 
    subnet_id = var.public_subnet_id                    # Reference the public subnet ID
    vpc_security_group_ids = [aws_security_group.ec2_sg.name]       # Attach the security group        

    tags = {
        Name = "WebServer"
    }
}
