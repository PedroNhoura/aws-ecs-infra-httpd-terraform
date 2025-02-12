resource "aws_instance" "ecs_instance" {
  ami                         = "ami-085ad6ae776d8f09c"  # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type               = "t2.micro"
  key_name                    = "pmoura-geral-pessoal"   # Substitua pelo nome da sua key pair
  subnet_id                   = element(var.public_subnet_ids, 0)
  vpc_security_group_ids      = [var.ecs_service_sg_id]
  associate_public_ip_address = true

  iam_instance_profile = var.ecs_instance_profile_name

  user_data = <<-EOF
    #!/bin/bash
    # Verifica se o diretório /etc/ecs existe; se não existir, cria-o.
    if [ ! -d /etc/ecs ]; then
      sudo mkdir -p /etc/ecs
    fi

    # Adiciona a variável de ambiente do cluster no arquivo ecs.config
    sudo bash -c "echo 'ECS_CLUSTER=${var.cluster_name}' >> /etc/ecs/ecs.config"

    # Instala o pacote ecs-init somente se ele ainda não estiver instalado
    if ! rpm -q ecs-init; then
      sudo yum install -y ecs-init
    fi

    # Habilita o serviço do ECS para iniciar na inicialização
    sudo systemctl enable ecs

    # Reinicia o serviço do ECS para que a configuração atualizada seja aplicada
    sudo systemctl restart ecs
  EOF

  tags = {
    Name = "ecs-instance"
  }
}
