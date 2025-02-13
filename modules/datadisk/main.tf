resource "google_compute_disk" "data_disk" {
    name  = var.disk_name
    type  = var.disk_type
    zone  = var.disk_zone
    size  = var.disk_size
}

resource "google_compute_attached_disk" "attach_disk" {
    disk      = google_compute_disk.data_disk.id
    instance  = var.target_instance 
}