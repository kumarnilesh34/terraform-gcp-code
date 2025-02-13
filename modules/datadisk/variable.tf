variable "target_instance" {
    description = "The name of the VM to attach the disk to."
    type        = string
}

variable "disk_name" {
    description = "The name of the disk."
    type        = string
    default     = "data-disk"
}

variable "disk_type" {
    description = "The type of the disk."
    type        = string
    default     = "pd-standard"
}

variable "disk_zone" {
    description = "The zone where the disk will be created."
    type        = string
    default     = "us-central1-a"
}

variable "disk_size" {
    description = "The size of the disk in GB."
    type        = number
    default     = 100
}