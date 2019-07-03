/* This is a 
multi line
comment. */

provider "aws" {
    region     = var.region
    profile    = var.profile
}

# This is a single-line comment.
resource "aws_instance" "base" {
    ami           = lookup(var.ami, var.region)
    instance_type = "t2.micro"
}

resource "aws_eip" "base" {
    instance = aws_instance.base.id
}
