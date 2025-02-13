variable "region" {
    description = "The region to deploy resources"
    type        = string
}

variable "zone" {
    description = "The zone to deploy resources"
    type        = string
}

variable "instance_name" {
    description = "The name of the instance"
    type        = string
}

variable "machine_type" {
    description = "The machine type to use for the instance"
    type        = string
}

variable "image" {
    description = "The image to use for the instance"
    type        = string
}

variable "network" {
    description = "The network to attach the instance to"
    type        = string
} 

variable "boot_disk_size" {
    description = "The boot disk size of the instance"
    type        = string
} 

variable "subnetwork" {
    description = "The subnetwork of the instance"
    type        = string
} 