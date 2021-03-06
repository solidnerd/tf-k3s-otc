####################
#   OTC auth config
####################

variable "region" {
  default = "eu-de"
}

variable "otc_domain" {
  default = "eu-de"
}

variable "auth_url" {
  default = "https://iam.eu-de.otc.t-systems.com:443/v3"
}

variable "tenant_name" {
  default = "eu-de"
}

variable "access_key" {
  default = ""
}

variable "secret_key" {
  default = ""
}

variable "key" {
  default = ""
}

####################
# VPC vars
####################

#variable "create_vpc" {
#  description = "Create VPC or use existing"
#  type        = bool
#  default     = false
#}

variable "vpc_name" {
  description = "Name of the VPC"  
  default     = "k3s-test"
}

variable "vpc_cidr" {
  description = "CIDR of the VPC"  
  default     = "10.1.0.0/24"
}

####################
# Subnet vars
####################

variable "subnet_name" {
  description = "Name of the VPC"  
  default     = "k3s-test"
}

variable "subnet_cidr" {
  description = "CIDR of the Subnet"  
  default     = "10.1.0.0/24"
}

variable "subnet_gateway_ip" {
  description = "Default gateway of the Subnet"  
  default     = "10.1.0.1"
}

####################
# ELB vars
####################

variable "elb_name" {
  description = "Name of the ELB"  
  type = string
  default = "lb-k3s-test"
}

####################
# RDS vars
####################

variable "rds_name" {
  description = "Name of the Root"  
  default     = "tf-k3s-test"
}

variable "rds_root_password" {
  description = "RDS Root Password"  
  default     = ""
}

variable "rds_type" {
  description = "RDS Type"  
  default     = "MySQL"
}

variable "rds_version" {
  description = "Version of RDS"
  default     = "8.0"
}

variable "rds_port" {
  description = "Port of RDS"
  default     = "3306"
}

variable "rds_az" {
  description = "Availability zones of RDS (minimum 2)"
  default     = ["eu-de-01" , "eu-de-02"]
}

variable "rds_volume_type" {
  description = "Volume type of RDS (COMMON or ULTRAHIGH)"
  default     = "COMMON"
}

variable "rds_volume_size" {
  description = "Volume size of RDS in GB (40 minimum)"
  default     = "40"
}

variable "rds_flavor" {
  description = "Flavor of RDS"
  default     = "rds.mysql.c2.medium.ha"
}

variable "rds_ha_mode" {
  description = "Use HA RDS service"
  type        = string
  default     = "async" # or 'null' in non-ha
}

variable "rds_db" {
  description = "Name of the RDS schema"
  default     = "k3s"
}

####################
# ECS vars
####################

variable "availability_zone1" {
  description = "Availability Zone 1 (Biere)"
  default     = "eu-de-01"
}

variable "availability_zone2" {
  description = "Availability Zone 2 (Magdeburg)"
  default     = "eu-de-02"
}

variable "availability_zone3" {
  description = "Availability Zone 3 (Biere)"
  default     = "eu-de-03"
}

variable "secgroup_name" {
  description = "Secgroup name"
  default     = "k3s-secgroup"
}

variable "image_name" {
  description = "Name of the image"
  default     = "Standard_Ubuntu_20.04_latest"
}

variable "flavor_id" {
  description = "ID of Flavor"
  default     = "c3.large.4"
}

variable "public_key" {
  description = "ssh public key to use"
  default     = ""
}

####################
# DNS vars
####################

#variable "create_dns" {
#  description = "Create DNS entries"
#  type        = bool
#  default     = false
#}

variable "rancher_host" {
  description = "Public host of the rancher instance"
  default     = "rancher"
}

variable "rancher_domain" {
  description = "Public domain of the rancher instance"
  default     = "example.com"
}

variable "admin_email" {
  description = "Admin email address for DNS and LetsEncrypt"
  default     = "nobody@example.com"
}
