resource "aws_route_table" "my-rt" {
  vpc_id = var.vpc_id

  tags = {
    Name = "public-rt"
  }
}

resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.my-rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.igw_id
}

resource "aws_route_table_association" "subnet_assoc" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.my-rt.id
}


