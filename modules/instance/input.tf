variable "tf_private_key_a" {}

variable "tf_public_key_b" {}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "instance" {
  ami           = "ami-3bda1956"
  instance_type = "t1.micro"

  tags {
    Name = "${var.tf_public_key_b}"
  }
}
