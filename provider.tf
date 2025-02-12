provider "aws" {
  region = "us-east-1"
}

module "ecs_iam" {
  source = "./modules/ecs_iam"
}

module "vpc" {
  source            = "./modules/vpc"
  vpc_name          = "ecs-vpc"
  vpc_cidr          = "10.0.0.0/16"
  public_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
}

