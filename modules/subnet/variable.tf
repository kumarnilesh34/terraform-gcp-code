variable "subnet_name" {
    description = "The name of the subnet"
    type        = string
}

variable "subnet_ip_cidr_range" {
    description = "The IP CIDR range of the subnet"
    type        = string
}

variable "region" {
    description = "The region where the subnet will be created"
    type        = string
}

variable "vpc_network" {
    description = "The VPC network to which the subnet belongs"
    type        = string
}