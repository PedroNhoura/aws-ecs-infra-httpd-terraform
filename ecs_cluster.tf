module "ecs_cluster" {
  source            = "./modules/ecs"
  cluster_name      = "ecs-cluster-ec2"
  public_subnet_ids = module.vpc.public_subnet_ids
  ecs_service_sg_id = module.vpc.ecs_service_sg_id
  ecs_instance_profile_name = module.ecs_iam.ecs_instance_profile_name
}