output "private_ip" {
  description = "The private IP address assigned to the instance."
  value       = oci_core_instance.micro.private_ip
}

output "public_ip" {
  description = "The public IP address assigned to the instance."
  value       = oci_core_instance.micro.public_ip
}

output "instance_id" {
  description = "The OCID of the instance that was created"
  value       = oci_core_instance.micro.id
}
