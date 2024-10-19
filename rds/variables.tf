# Define variables for the RDS instance

# Allocated storage
variable "allocated_storage" {
    description = "Allocated storage for the RDS instance"
    type = number
    default = 20                    # 20GB amount storage for database
}

# Database engine
variable "engine" {
    description = "Database engine"
    type = string
    default = "mysql"
}

# Database name
variable "db_name" {
    description = "Database name"
    type = string
    default = "malydb"
}

# Database username
variable "username" {
    description = "Database username"
    type = string
    default = "admin"
}

# Database password
variable "password" {
  description = "Database password"
  type        = string
  default     = "password"
}


# The block defining the variable parameter_group_name is used to specify the name of the parameter group for the RDS instance. 
# A parameter group is a collection of settings that you can apply to an RDS instance to control its behavior. 
# These settings can include things like memory allocation, storage configuration, and other database-specific parameters.

# Parameter group name
variable "parameter_group_name" {
  description = "Parameter group name"
  type        = string
  default     = "default.mysql5.7"
}

# Security group ID
variable "security_group_id" {
  description = "Security group ID"
  type        = string
}


# Private subnet IDs
variable "private_subnet_ids" {
  description = "Private subnet IDs"
  type        = list(string)
}

# Instance class
variable "instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t2.micro"
}