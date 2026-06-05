

variable "project_id" {
    description = "project_id"
    default     = "pulse-gcp-498415"
}

variable "gke_num_nodes" {
    description = "gke_num_nodes"
    default     = 2
}

variable "region" {
    description = "region"
    default     = "us-central1"
  
}

variable "cluster_name" {
    description = "cluster_name"
    default     = "pulse-gke-cluster"
}

variable "network" {}

variable "subnetwork" {
  
}

variable "pods_range_name" {
  
}

variable "services_range_name" {
  
}


