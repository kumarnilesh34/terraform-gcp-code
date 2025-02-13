

resource "google_compute_firewall" "allow_ssh_vpc" {
    name         = var.firewall_name
    network      = var.network_name

    allow {
        protocol = var.protocol
        ports    = var.ports
    }

    source_ranges = var.source_ranges
    #target_tags   = var.target_tags
    

}