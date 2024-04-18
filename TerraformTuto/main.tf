terraform {
    required_providers {
        github = {
            source = "integrations/github"
            version = "~> 5.0"
        }
    }
}

resource "github_repository" "Terraform_Repository"{
  name        = "Terraform_Repository"
  description = "My awesome repository"
  visibility  = "public"
}

resource "github_branch" "development" {
  repository = github_repository.Terraform_Repository.name
  branch     = "development"
}

resource "github_branch" "feature" {
  repository = github_repository.Terraform_Repository.name
  branch     = "feature"
}

resource "github_branch" "release" {
  repository = github_repository.Terraform_Repository.name
  branch     = "release"
}
