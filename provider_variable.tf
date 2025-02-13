##PROVIDER VARIABLES
variable "project" {
    description = "The GCP project ID"
    type        = string
}

variable "credentials_file" {
    description = "Path to the GCP credentials file"
    type        = string
}

variable "region" {
    description = "The region where resources will be created"
    type        = string
}

variable "zone" {
    description = "The region where resources will be created"
    type        = string
}