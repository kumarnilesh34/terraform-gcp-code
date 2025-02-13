output "subnet_self_link" {
  value = google_compute_subnetwork.subnet-terraform.self_link
  description = "The self-link of the created subnetwork"
}