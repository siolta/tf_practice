variable "profile" {
  type        = string
  description = "The AWS creds profile to use"
}


variable "region" {
  type        = string
  description = "The AWS Region."
}

variable "ami" {
  type = map(string)
  default = {
    us-east-1 = "ami-4cc3b85b"
    us-west-1 = "ami-7c4b331c"
  }
}
