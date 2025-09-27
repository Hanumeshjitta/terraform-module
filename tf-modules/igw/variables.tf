variable "vpc_id" {
  description = "The ID of the existing VPC"
  type        = string
  #default     = "vpc-06c8b51f276c648f4"
}
variable "my-igw" {
  description = "For intenet access"
  type        = string
  default     = "my-igw"
}