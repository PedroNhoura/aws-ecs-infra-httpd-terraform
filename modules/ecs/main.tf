# filepath: /home/pmoura/projects/ecs-aws-pessoal/terraform-project/modules/ecs/main.tf
resource "aws_ecs_cluster" "ecs_cluster" {
  name = var.cluster_name
}

