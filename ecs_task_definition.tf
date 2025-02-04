resource "aws_ecs_task_definition" "ecs_task_definition" {
  family                   = "ecs-task"
  container_definitions    = jsonencode([
    {
      name      = "httpd"
      image     = "httpd:2.4"
      cpu       = 307
      memory    = 358
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 8080
          protocol      = "tcp"
        }
      ]
    }
  ])
  execution_role_arn       = module.ecs_iam.ecs_task_execution_role_arn
  requires_compatibilities = ["EC2"]
  cpu                      = "307"
  memory                   = "358"
}