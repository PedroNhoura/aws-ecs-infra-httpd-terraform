resource "aws_ecs_service" "ecs_service" {
  name            = "service-ecs-httpd"
  cluster         = module.ecs_cluster.ecs_cluster_name
  task_definition = aws_ecs_task_definition.ecs_task_definition.arn
  desired_count   = 1
  network_configuration {
    subnets          = module.vpc.public_subnet_ids
    security_groups  = [module.vpc.ecs_service_sg_id]
    assign_public_ip = true
  }
}