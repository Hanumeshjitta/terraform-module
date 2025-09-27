variable "subnet_id" {
  description = "Subnet ID where EC2 will be launched"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name for EC2 login"
  type        = string
}


variable "ec2_name" {
  default = "WebServer"
}