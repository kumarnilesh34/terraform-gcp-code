
variable "peer_2_to_1_name" {
    description = "Name of the peering from network 2 to network 1"
    type        = string
}

variable "peer_1_to_2_name" {
    description = "Name of the peering from network 1 to network 2"
    type        = string
}

variable "network_name" {
    description = "Name of the primary network"
    type        = string
}

variable "peer_network_name" {
    description = "Name of the peer network"
    type        = string
}