provider "aws" {
  region = "us-east-1"
}

module "ecs_cluster" {
  source = "./modules/ecs"
}

module "vpc" {
  source = "./modules/vpc"
}
