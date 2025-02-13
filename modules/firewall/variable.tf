variable "firewall_name" {
    description = "The name of the firewall rule"
    type        = string
    default     = "allow-ssh-vpc"
}

variable "network_name" {
    description = "The name of the network"
    type        = string
}

variable "protocol" {
    description = "The protocol to allow"
    type        = string
    default     = "tcp"
}

variable "ports" {
    description = "The ports to allow"
    type        = list(string)
    default     = ["22"]
}

variable "source_ranges" {
    description = "The source ranges to allow"
    type        = list(string)
    default     = ["0.0.0.0/0"]
}

# variable "instance_names" {
#   description = "List of instances to ensure they are created before attaching the disk"
#   type        = list(string)
# }

# variable "target_tags" {
#     description = "The target tags for the firewall rule"
#     type        = list(string)
#     default     = ["ssh"]
# }