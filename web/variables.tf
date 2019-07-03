variable "profile" {
    description = "The AWS credential profile to use."  
}

variable "region" {
    description = "The AWS Region to run in."  
}

variable "key_name" {
    description = "The AWS key pair to use for resources."  
}

variable "ami" {
    type = "map"  
    description = "A map of AMIs."
    default = {}
}

variable "instance_type" {
    description = "The instance type."  
    default = "t2.micro"
}

variable "instance_ips" {
    description = "The IPs to use for our instances"
    default = ["10.0.1.20", "10.0.1.21"]
}

variable "owner_tag" {
    default = ["team1", "team2"]  
}

