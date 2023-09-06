resource "aws_ecr_repository" "meteor-repo" {
  name = var.repo-ecr-name
}