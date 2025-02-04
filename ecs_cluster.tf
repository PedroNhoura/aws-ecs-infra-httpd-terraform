# filepath: /home/pmoura/projects/ecs-aws-pessoal/terraform-project/ecs_cluster.tf
module "ecs_cluster" {
  source            = "./modules/ecs"
  cluster_name      = "ecs-cluster-ec2"
  public_subnet_ids = module.vpc.public_subnet_ids
  ecs_service_sg_id = module.vpc.ecs_service_sg_id
}