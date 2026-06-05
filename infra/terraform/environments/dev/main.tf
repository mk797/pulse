


module "network" {
    source = "../../modules/network"

    project_id = var.project_id
    region = var.region
}

module "cluster" {
    source = "../../modules/cluster"
    project_id = var.project_id
    region = var.region

    network = module.network.vpc_name
    subnetwork = module.network.subnetwork_name

    pods_range_name = module.network.pod-ranges_name
    services_range_name = module.network.services-range_name

}