provider "tfe" {
  hostname = var.hostname # Optional, defaults to Terraform Cloud `app.terraform.io`
  token    = var.token
}

resource "tfe_project" "project" {
  for_each = var.project_name
  organization = var.org_name
  name = each.value
}
