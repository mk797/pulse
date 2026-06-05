
output "vpc_name" {
  value       = google_compute_network.vpc.name
  description = "VPC Name"
  
}

output "subnetwork_name" {
  value       = google_compute_subnetwork.subnetwork.name
  description = "Subnetwork Name"
  
}

output "pod-ranges_name" {
  value = "pod-ranges"

}

output "services-range_name" {
  value = "services-range"

}