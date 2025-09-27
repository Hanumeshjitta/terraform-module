variable "ami_id" {
  description = " Specify an AMI ID that is available in your AWS region for the EC2 instance"
  type        = string
  #default     = "ami-026fccd88446aa0bf" # Example, Replace with a valid AMI in your region

}

variable "key_name" {
  description = "Specify the key pair name for SSH access to the EC2 instance"
  type        = string
}

