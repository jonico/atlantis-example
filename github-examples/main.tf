terraform {
  required_version = ">= 0.12, < 0.15"
  backend "s3" {
    bucket = "terraform-up-and-running-state-jonico"
    key = "github-examples/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-up-and-running-locks-jonico"
    encrypt = true
  }
}

provider "github" {
  token = var.github_token
  owner = "jonico-sandbox"
}
