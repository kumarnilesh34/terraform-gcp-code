resource "google_compute_subnetwork" "subnet-terraform" {
    name          = var.subnet_name
    ip_cidr_range = var.subnet_ip_cidr_range
    region        = var.region
    network       = var.vpc_network
}