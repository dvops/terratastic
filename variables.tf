variable "tf_private_key_a" {}

variable "tf_private_key_b" {}

variable "tf_public_key_a" {
  default = "fennel"
}

variable "tf_public_key_b" {
  default = "peppermint"
}

variable "tf_bucket_name" {
  default = "atlas-demo-test"
}
