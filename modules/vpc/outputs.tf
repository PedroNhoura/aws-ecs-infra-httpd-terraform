output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "ecs_service_sg_id" {
  value = aws_security_group.ecs_service.id
}