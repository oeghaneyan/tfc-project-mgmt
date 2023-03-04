provider "tfe" {
  hostname = var.hostname # Optional, defaults to Terraform Cloud `app.terraform.io`
  token    = var.token
}

resource "tfe_project" "project" {
  count = length(var.project_name)
  organization = var.org_name
  name  = var.project_name[count.index]
}
