resource "github_repository_collaborator" "jessla-collaborator-admin-terraform-created" {
  repository = github_repository.terraform-created.name
  username   = "jessla"
  permission = "write"
  depends_on = [github_repository.terraform-created]
}
