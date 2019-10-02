variable "profile" {
  type        = string
  description = "The AWS credential profile to use."
}

variable "region" {
  type        = string
  description = "The AWS Region to run in."
}

variable "ami" {
  type        = map(string)
  description = "A map of AMIs."
  default     = {}
}

variable "instance_type" {
  type        = string
  description = "The instance type."
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "The AWS key pair to use for resources."
}

variable "instance_ips" {
  type        = list(string)
  description = "The IPs to use for our instances"
  default     = ["10.0.1.20", "10.0.1.21"]
}

variable "prefix" {
  type = string
  default     = "tf-book-siolta"
  description = "The name of our org, i.e. examplecom"
}

variable "key_path" {
  type        = string
  description = "The location of the SSH key to use for resources."
  default     = "/Users/dg5h/.ssh/tfb_key.pem"
}

variable "owner_tag" {
  type    = list(string)
  default = ["team1", "team2"]
}

variable "token" {
  description = "The Consul server token"
}
