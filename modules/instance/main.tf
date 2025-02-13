resource "google_compute_instance" "instance_name" {
    name         = var.instance_name
    machine_type = var.machine_type
    zone         = var.zone

     boot_disk {
        initialize_params {
            image = var.image
            size  = var.boot_disk_size
        }
    }

    network_interface {
        network = var.network
        subnetwork = var.subnetwork
        access_config {
            // Ephemeral IP
        }
    }
}