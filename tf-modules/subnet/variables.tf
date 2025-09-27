variable "vpc_id" {
  description = "The VPC ID where subnet will be created"
  type        = string
}

variable "cidr_block" {
  description = " CIDR block for the Public subnet"
  type        = string
  default     = "10.0.0.0/25"
}


variable "az" {
  description = "Availability Zone for the subnet"
  type        = string
  default     = "us-east-1b"
}

variable "map_public_ip_on_launch" {
  description = "Auto-assign public IPs to instances in this subnet"
  type        = bool
  default     = false
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "public_subnet"
}

variable "tags" {
  description = "Additional tags for the subnet"
  type        = map(string)
  default     = {}
}
