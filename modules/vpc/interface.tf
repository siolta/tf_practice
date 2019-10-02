variable "region" {
  type        = string
  description = "The AWS region to launch the VPC in."
}

variable "environment" {
  type        = string
  description = "The name of our environment, i.e. development."
  default     = "development"
}

variable "key_name" {
  type        = string
  description = "The AWS key pair to use for resources."
  default     = "tfb_key"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR of the VPC."
}

variable "public_subnets" {
  type        = list(string)
  default     = []
  description = "The public subnets to create."
}

variable "private_subnets" {
  type        = list(string)
  default     = []
  description = "The private subnets to create."
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The host instance type to launch."
}

variable "ami" {
  type = map(string)
  default = {
    "us-east-1" = "ami-f652979b"
    "us-west-1" = "ami-7c4b331c"
    "eu-west-1" = "ami-0ae77879"
  }

  description = "The (Ubuntu 14.04) AMIs to use for web and app instances."
}

variable "bastion_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The bastion host instance type."
}

variable "bastion_ami" {
  type = map(string)
  default = {
    "us-east-1" = "ami-f652979b"
    "us-west-1" = "ami-7c4b331c"
    "eu-west-1" = "ami-0ae77879"
  }

  description = "The bastion host AMIs."
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
}

variable "enable_dns_support" {
  type        = bool
  description = "Should be true if you want to use private DNS within the VPC"
  default     = true
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Should be false if you do not want to auto-assign public IP on launch"
  default     = true
}

output "vpc_id" {
  value = aws_vpc.environment.id
}

output "vpc_cidr" {
  value = aws_vpc.environment.cidr_block
}

output "bastion_host_dns" {
  value = aws_instance.bastion.public_dns
}

output "bastion_host_ip" {
  value = aws_instance.bastion.public_ip
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "public_route_table_id" {
  value = aws_route_table.public.id
}

output "private_route_table_id" {
  value = aws_route_table.private[*].id
}

output "default_security_group_id" {
  value = aws_vpc.environment.default_security_group_id
}
