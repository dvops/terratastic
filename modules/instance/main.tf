resource "aws_instance" "instance" {
  ami           = "ami-71d91a1c"
  instance_type = "t1.micro"

  tags {
    Name = "${var.tf_public_key_b}"
  }
}
