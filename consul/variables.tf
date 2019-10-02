variable "profile" {
  type        = string
  description = "The AWS creds profile to use"
}

variable "region" {
  type        = string
  description = "The AWS Region."
}

variable "prefix" {
  type = string
  default     = "tf-book-siolta"
  description = "The name of our org, i.e. examplecom"
}

variable "environment" {
  type = string
  default     = "consul"
  description = "The name of our environment, i.e. development."
}

variable "private_key_path" {
  type        = string
  description = "The location of the SSH key to use for resources."
  default     = "/Users/dg5h/.ssh/tfb_key.pem"
}

variable "key_name" {
  type        = string
  description = "The AWS key pair to use for resources."
  default     = "tfb_key"
}

variable "vpc_cidr" {
  type = string
  description = "The CIDR of the VPC."
}

variable "public_subnet" {
  type = string
  description = "The public subnet to populate."
}

variable "token" {
  type = string
  description = "Consul server token"
}

variable "encryption_key" {
  type = string
  description = "Consul encryption key"
}
