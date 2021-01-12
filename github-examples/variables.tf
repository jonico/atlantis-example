variable "github_token" {
  description = "GitHub Token"
  type        = string
  sensitive   = true
}

variable "owner" {
  description = "GitHub org or owner name"
  type        = string
  default = "jonico"
}
