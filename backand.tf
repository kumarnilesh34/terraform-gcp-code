resource "google_storage_bucket" "bucket" {
    name     = "terraform-state-bucket-07"
    location = "asia-south1"
    force_destroy = true
}
# terraform {
#    backend "gcs" {
#        bucket  = "terraform-state-bucket-07"
#        prefix  = "terraform/state"
#    }
# }