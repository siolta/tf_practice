variable "profile" {
  type        = string
  description = "The AWS credential profile to use."
}

variable "region" {
  type        = string
  description = "The AWS Region to run in."
}

variable "key_name" {
  type        = string
  description = "The AWS key pair to use for resources."
}

variable "ami" {
  type        = map(string)
  description = "A map of AMIs."
  default     = {}
}

variable "instance_type" {
  type = string
  description = "The instance type."
  default     = "t2.micro"
}

variable "instance_ips" {
  type        = list(string)
  description = "The IPs to use for our instances"
  default     = ["10.0.1.20", "10.0.1.21"]
}

variable "owner_tag" {
  type    = list(string)
  default = ["team1", "team2"]
}

