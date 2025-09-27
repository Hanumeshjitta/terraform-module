
variable "vpc_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "my-vpc"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/24"
}
variable "tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}
