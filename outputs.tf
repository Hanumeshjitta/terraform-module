output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.subnet.subnet_id
}

output "igw_id" {
  value = module.igw.igw_id
}

output "route_table_id" {
  value = module.route_table.route_table_id
}
output "ec2_instance_id" {
  value = module.ec2.instance_id
}



