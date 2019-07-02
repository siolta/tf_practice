variable "region" {
    description = "The AWS Region."
    default = "us-west-1"
}

variable "ami" {
    type = "map"  
    default = {
        us-east-1 = "ami-0d729a60"
        us-west-1 = "ami-7c4b331c"
    }
}
