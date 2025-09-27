# terraform-module
This project uses Terraform modules to provision AWS infrastructure.

Prerequisites – Configure AWS Credentials

Task is to set up the environment by installing the OpenTofu CLI.

Configure authentication using the AWS CLI (or another supported cloud provider).

Verify the setup by running:

tofu --version

aws sts get-caller-identity

Networking Setup – Create Modules for Each Resource

Provision a VPC with subnets, an Internet Gateway (IGW), a route table, and route table associations with the subnets.

Launch an EC2 instance inside the public subnet.

I have updated the Terraform module structure and source code for above requirements. 
project/
├── main.tf
├── variables.tf
├── outputs.tf
└── modules/
    ├── vpc/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── subnet/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── igw/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── route_table/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── ec2/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf 
