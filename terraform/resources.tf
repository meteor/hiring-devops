resource "aws_ecr_repository" "meteor-repo" {
  name = var.repo-ecr-name
}

resource "aws_ecs_cluster" "meteor-ecs" {
  name = var.cluster-ecs-name
}
