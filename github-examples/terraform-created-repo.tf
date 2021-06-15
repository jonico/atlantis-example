resource "github_repository" "terraform-created" {
  name        = "terraform-examples"
  description = "Repo created by terraform as an example on how to use the GitHub Terraform provider"

  visibility = "private"

  template {
    owner = "jonico"
    repository = "ShinyApp"
  }
}
