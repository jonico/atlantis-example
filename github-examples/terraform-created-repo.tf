resource "github_repository" "terraform-created" {
  name        = "terraform-examples"
  description = "Repo created by terraform"

  private = true

  template {
    owner = "github"
    repository = "terraform-module-template"
  }
}
