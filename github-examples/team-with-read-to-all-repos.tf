resource "github_team" "read-it-all" {
  name        = "ReadItAll"
  description = "A team that will get read access to all repositories"
}

data "github_repositories" "all_repos" {
  query = "org:jonico-sandbox"
}


resource "github_team_repository" "read-it-all_team_repo" {
  for_each = toset(data.github_repositories.all_repos[*].name)
  team_id    = github_team.read-it-all.id
  repository = each.value
  permission = "pull"
}
