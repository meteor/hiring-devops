provider "aws" {
  region = "us-east-2"
}

module "ecs_cluster" {
  source = "../terraform-modules/ecs"
}
