output "instances" {
  value       = "${aws_instance.tomcat.*.private_ip}"
  description = "PrivateIP address details"