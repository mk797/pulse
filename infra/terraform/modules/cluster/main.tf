

resource "google_container_cluster" "primary" {
  name     = "${var.project_id}-gke"
  location = var.region
  enable_autopilot = true
  

  network            = var.network
  subnetwork         = var.subnetwork

  ip_allocation_policy {
    cluster_secondary_range_name = var.pods_range_name
    services_secondary_range_name = var.services_range_name


  }

  deletion_protection = false


}


