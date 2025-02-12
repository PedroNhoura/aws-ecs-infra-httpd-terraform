# filepath: /home/pmoura/projects/ecs-aws-pessoal/terraform-project/modules/ecs/variables.tf
variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "ecs-cluster-ec2"
}

variable "public_subnet_ids" {
  description = "A list of public subnet IDs"
  type        = list(string)
}

variable "ecs_service_sg_id" {
  description = "The security group ID for the ECS service"
  type        = string
}

variable "ecs_instance_profile_name" {
  description = "The name of the ECS instance profile"
  type        = string
}