resource "github_team_membership" "jonico-member-read-it-all" {
  team_id  = github_team.read-it-all.id
  username = "jonico"
  role     = "member"
}
