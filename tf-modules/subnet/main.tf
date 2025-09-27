resource "aws_subnet" "my-subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block
  availability_zone       = var.az  
  map_public_ip_on_launch = true  # set false if private subnet

  tags = {
    Name = var.subnet_name
  }
}



