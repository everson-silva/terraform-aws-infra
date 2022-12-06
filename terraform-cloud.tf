terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = var.terraform_organization

    workspaces {
      name = var.terraform_name_workspaces
    }
  }
}