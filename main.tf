provider "atlas" {}

provider "aws" {
  region = "eu-west-1"
}

module "instance" {
  source           = "./modules/instance"
  tf_private_key_a = "${var.tf_private_key_a}"
  tf_public_key_b  = "${var.tf_public_key_b}"
}

module "storage" {
  source         = "./modules/storage"
  tf_bucket_name = "${var.tf_bucket_name}"
}

module "network" {
  source        = "./modules/network"
  cidr_block    = "${var.vpc_cidr_block}"
  public_subnet = "${var.public_subnet}"
}
