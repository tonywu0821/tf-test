terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner              = var.github_owner
  app_auth {
    id               = var.github_app_id
    installation_id  = var.github_app_installation_id
    pem_file         = var.github_app_pem_file
  }
}

resource "github_actions_secret" "example_secret" {
  repository      = var.repo_name
  secret_name     = "MY_SECRET"
  plaintext_value = "super_secret_value"
}
