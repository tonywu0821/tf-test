variable "github_owner" {
  description = "GitHub org or user"
  type        = string
}

variable "github_app_id" {
  description = "GitHub App ID"
  type        = number
}

variable "github_app_installation_id" {
  description = "GitHub App Installation ID"
  type        = number
}

variable "github_app_pem_file" {
  description = "GitHub App Pem file"
  type        = string
}

variable "repo_name" {
  description = "Target GitHub repository"
  type        = string
}
