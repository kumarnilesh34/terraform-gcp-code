credentials_file = "app-development-446013-63b8be607595.json"
project = "app-development-446013"
region = "us-central1"
zone = "us-central1-f"

##### vpc #####
vpc_count = 2
vpc_name = ["preprod-vpc-1", "preprod-vpc-2"]

##### subnet #####
subnet_count = 2
subnet_names = ["preprod-subnet-1", "preprod-subnet-2"]
subnet_ip_cidr_ranges = ["10.12.2.0/24", "10.12.3.0/24"]
subnet_regions = ["us-central1", "us-central1"]

#### vpc peering ####
peer_1_to_2 = "vpc1-to-vpc2"
peer_2_to_1 = "vpc2-to-vpc1"

###### instance  #####
instance_count = 2
regions = ["us-central1", "us-central1"]
instance_names = ["preprod-instance-1", "preprod-instance-2"]
zones = ["us-central1-f", "us-central1-f"]
machine_types = ["n1-standard-1", "n1-standard-1"]
images = ["centos-stream-9", "centos-stream-9"]
boot_disk_sizes = [50, 50]

##### firewalls ######
firewall_count = 2
firewall_names = ["preprod-firewall-ports-1", "preprod-firewall-ports-2"]
network_names = ["preprod-vpc-1", "preprod-vpc-2"]
protocols = ["tcp", "tcp"]
ports = [["80", "443", "22"], ["80", "443", "22"]]
source_ranges = [["0.0.0.0/0"], ["0.0.0.0/0"]]

##### data-disks #####
data_disk_count = 2
data_disks = ["preprod-data-disk-1", "preprod-data-disk-2"]
disk_types = ["pd-standard", "pd-standard"]
disk_zones = ["us-central1-f", "us-central1-f"]
boot_disk_size = [100, 100]
vm_names = ["preprod-instance-1", "preprod-instance-2"]