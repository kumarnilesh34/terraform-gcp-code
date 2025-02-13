variable "subnet_count" {
    description = "The number of subnets to create"
    type        = number
}

variable "subnet_names" {
    description = "A list of subnet names"
    type        = list(string)
}

variable "subnet_ip_cidr_ranges" {
    description = "A list of subnet CIDR ranges"
    type        = list(string)
}

variable "subnet_regions"{
    description = "A list of regions for the subnets"
    type        = list(string)
}