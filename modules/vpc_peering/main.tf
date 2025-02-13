resource "google_compute_network_peering" "peer_1_to_2" {
    name         = var.peer_1_to_2_name
    network      = var.network_name
    peer_network = var.peer_network_name
}

resource "google_compute_network_peering" "peer_2_to_1" {
    name         = var.peer_2_to_1_name
    network      = var.peer_network_name
    peer_network = var.network_name
}