/* This is a 
multi line
comment. */

provider "aws" {
  region  = var.region
  profile = var.profile
}

data "terraform_remote_state" "web" {
  backend = "s3"

  config = {
    profile = var.profile
    region = var.region
    bucket = "tf-book-siolta-remote-state-web"
    key    = "terraform.tfstate"
  }
}


terraform {
  backend "s3" {
    profile = "iolta"
    region  = "us-west-1"
    bucket  = "tf-book-siolta-remote-state-base"
    key     = "terraform.tfstate"
  }
}

# This is a single-line comment.
resource "aws_instance" "base" {
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"
  subnet_id = data.terraform_remote_state.web.outputs.public_subnet_id
}

resource "aws_eip" "base" {
  instance = aws_instance.base.id
  vpc = true
}
