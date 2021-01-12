resource "github_repository_collaborator" "jessla-collaborator-admin-terraform-created" {
  repository = "terraform-created"
  username   = "jessla"
  permission = "admin"
}
