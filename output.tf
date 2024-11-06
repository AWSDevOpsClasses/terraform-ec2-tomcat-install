output "private_ip" {
  value       = "${aws_instance.tomcat.*.private_ip}"
  description = "PrivateIP address details"
} 

output "public_ip" {
  value       = "${aws_instance.tomcat.*.public_ip}"
  description = "PrivateIP address details"
}  