provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "train_stats_realtime" {
  name                 = "train_stats_realtime"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "train_stats_movement" {
  name                 = "train_stats_movement"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "trainstats_ui" {
  name                 = "train_stats_ui"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

}

output "trains_stats_realtime_repository_url" {
  value = aws_ecr_repository.train_stats_realtime.repository_url
}

output "trains_stats_movement_repository_url" {
  value = aws_ecr_repository.train_stats_movement.repository_url
}

output "train_stats_ui_repository_url" {
  value = aws_ecr_repository.trainstats_ui.repository_url
}
