output "whoami" {
  value = "${aws_instance.instance.id}"
}
