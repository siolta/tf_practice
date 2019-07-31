variable "profile" {
  type        = string
  description = "The AWS credential profile to use."
}

variable "region" {
  type        = string
  description = "The AWS Region to run in."
}

variable "prefix" {
  default     = "tf-book-siolta"
  description = "The name of our org, i.e. examplecom"
}

variable "environment" {
  default     = "web"
  description = "The name of our environment, i.e. development."
}

