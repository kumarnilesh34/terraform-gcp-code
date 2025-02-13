variable "vpc_count" {
    description = "The number of VPCs to create"
    type        = number
}

variable "vpc_name" {
    description = "A list of VPC names"
    type        = list(string)
}