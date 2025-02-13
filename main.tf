module "VPCs" {
    count = var.vpc_count
    source   = "./modules/vpc"
    vpc_name = var.vpc_name[count.index]
}

module "subnets" {
    count = var.subnet_count
    source                = "./modules/subnet"
    subnet_name           = var.subnet_names[count.index]
    subnet_ip_cidr_range  = var.subnet_ip_cidr_ranges[count.index]
    region                = var.subnet_regions[count.index]
    vpc_network           = module.VPCs[count.index].vpc_self_link
}

module "vpc_peering" {
    source = "./modules/vpc_peering"
    network_name = module.VPCs[0].vpc_self_link
    peer_network_name = module.VPCs[1].vpc_self_link
    peer_1_to_2_name = var.peer_1_to_2
    peer_2_to_1_name = var.peer_2_to_1
}

module "instances" {
    count = var.instance_count
    source        = "./modules/instance"
    region        = var.regions[count.index]
    instance_name = var.instance_names[count.index]
    zone          = var.zones[count.index]
    network        = module.VPCs[count.index].vpc_self_link
    subnetwork     = module.subnets[count.index].subnet_self_link
    machine_type  = var.machine_types[count.index]
    image = var.images[count.index]
    boot_disk_size = var.boot_disk_sizes[count.index]
}

module "data_disks" {
    count = var.data_disk_count
    source = "./modules/datadisk"
    disk_name = var.data_disks[count.index]
    disk_type = var.disk_types[count.index]
    disk_zone = var.disk_zones[count.index]
    disk_size = var.boot_disk_size[count.index]
    target_instance = var.vm_names[count.index]
    depends_on = [module.instances]
}

module "firewall" {
    count = var.firewall_count
    source         = "./modules/firewall" 
    firewall_name  = var.firewall_names[count.index]
    network_name   = module.VPCs[count.index].vpc_self_link
    protocol       = var.protocols[count.index]
    ports          = var.ports[count.index]
    source_ranges  = var.source_ranges[count.index]
    depends_on = [module.VPCs]
}