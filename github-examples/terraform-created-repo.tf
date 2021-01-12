resource "github_repository" "terraform-created" {
  name        = "terraform-created"
  description = "Repo created by terraform"

  visibility = "private"

  template {
    owner = "jonico"
    repository = "ShinyApp"
  }
}
