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
    us-east-1 = "ami-0d729a60"
    us-west-1 = "ami-7c4b331c"
  }
}
