variable "firewall_count" {
    description = "The number of firewall rules to create"
    type        = number
}

variable "firewall_names" {
    description = "List of firewall rule names"
    type        = list(string)
}

variable "network_names" {
    description = "List of network names to attach the firewall rules to"
    type        = list(string)
}

variable "protocols" {
    description = "List of protocols allowed by the firewall rules"
    type        = list(string)
}

variable "ports" {
    description = "List of ports allowed by the firewall rules"
    type        = list(list(string))
}

variable "source_ranges" {
    description = "List of source ranges allowed by the firewall rules"
    type        = list(list(string))
}