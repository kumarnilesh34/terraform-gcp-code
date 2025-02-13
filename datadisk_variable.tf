variable "data_disk_count" {
    description = "The number of data disks to create"
    type        = number
}

variable "data_disks" {
    description = "A list of data disk names"
    type        = list(string)
}

variable "disk_types" {
    description = "A list of data disk types"
    type        = list(string)
}

variable "disk_zones" {
    description = "A list of zones where the data disks will be created"
    type        = list(string)
}

variable "boot_disk_size"{
    description = "A list of data disk sizes in GB"
    type        = list(number)
}

variable "vm_names" {
    description = "A list of VM names to which the data disks will be attached"
    type        = list(string)
}