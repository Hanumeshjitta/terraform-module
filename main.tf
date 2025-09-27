provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id
}

module "igw" {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc_id
}

module "route_table" {
  source   = "./modules/route_table"
  vpc_id   = module.vpc.vpc_id
  subnet_id = module.subnet.subnet_id
  igw_id   = module.igw.igw_id
}

module "ec2" {
  source        = "./modules/ec2"
  subnet_id     = module.subnet.subnet_id
  ami_id        = var.ami_id      # ✅ Correct
  key_name      = var.key_name
  instance_type = "t2.micro"
}


 #module "ec2" {
 # source      = "./modules/ec2"
 # subnet_id   = module.subnet.subnet_id
  # ami           = var.ami_id
  # key_name      = var.key_name
  #ami_id      = "ami-0360c520857e3138f"   # ✅ Replace with a valid AMI in your region
  #key_name    = "my-key"                  # ✅ Replace with your AWS EC2 Key Pair name
  #instance_type = "t2.micro"
#}




