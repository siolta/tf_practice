provider "aws" {
  region  = var.region
  profile = var.profile
}

terraform {
  backend "s3" {
    profile = "iolta"
    region  = "us-west-1"
    bucket  = "tf-book-siolta-remote-state-consul"
    key     = "terraform.tfstate"
  }
}

module "vpc_basic" {
  source        = "../modules/vpc"
  name          = "consul"
  cidr          = var.vpc_cidr
  public_subnet = var.public_subnet
}

module "consul" {
  source           = "github.com/turnbullpress/tf_consul.git"
  environment      = var.environment
  token            = var.token
  encryption_key   = var.encryption_key
  vpc_id           = module.vpc_basic.vpc_id
  public_subnet_id = module.vpc_basic.public_subnet_id
  region           = var.region
  key_name         = var.key_name
  private_key_path = var.private_key_path
}