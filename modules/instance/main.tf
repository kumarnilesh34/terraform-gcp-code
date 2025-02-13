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

    metadata = {
    ssh-keys = "user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCLqdcpm9bjpx4CwAG1phzkHZdZCdn62NSkp2CH2D4/6agPFidIp95GMPoXEb4/+BrxqSn51FlzSxdBvUJfNXfvBuA8s41007dLxH3+SvGYk9clwzTNyyte+9I34l5ZoY/0WafWLWQXIj614eaYdmMbtiKRDS+zC5eykIzbh5d1QvVxLU/++5Y8QNfvN22vXN4Q+Egdz3J2h69XeFMwF+2JeWqKF7oTNkvRApIeeQ1m87PB709j5YL7jVo+dosuM+HzTYiLKJoAmsKQTVqA543QdtGDb2luWwFgOOQEMBX3rmpl9g6DbJpfWWCuZ7SbUFgE2jejMbwUq58XqcDO+h3t user"
  }
    lifecycle {
    ignore_changes = [attached_disk]
  }
}
