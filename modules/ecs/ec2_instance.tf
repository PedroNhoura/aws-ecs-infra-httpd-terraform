resource "aws_instance" "ecs_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "pmoura-geral-pessoal" # Replace with your key pair name

  subnet_id              = element(var.public_subnet_ids, 0)
  vpc_security_group_ids = [var.ecs_service_sg_id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              echo ECS_CLUSTER=${var.cluster_name} >> /etc/ecs/ecs.config
              EOF

  tags = {
    Name = "ecs-instance"
  }
}