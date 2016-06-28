resource "aws_s3_bucket" "bucket" {
  bucket = "${var.tf_bucket_name}"
  acl    = "private"

  tags {
    Name = "${var.tf_bucket_name}"
  }
}
