resource "aws_ecr_repository" "this" {
  name = "${var.env}-ws-app"
}