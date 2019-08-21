provider "aws" {
  region  = var.region
  profile = var.profile
  version = ">= 2.1.2"
}

module "remote_state" {
  source      = "../../modules/remote_state"
  prefix      = var.prefix
  environment = var.environment
}
