
output "cluster_name" {
    value = module.cluster.kubernetes_cluster_name
    description = "GKE Cluster Name"
  
}

output "cluster_host" {
    value = module.cluster.kubernetes_cluster_host
    description = "GKE Cluster Host"
  
}