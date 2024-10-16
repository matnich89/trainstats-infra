terraform {
  backend "s3" {
    bucket         = "trainstats-terraform-state"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}
