provider "tfe" {
  hostname = var.hostname # Optional, defaults to Terraform Cloud `app.terraform.io`
  token    = var.token
}


#module "tfe_project" {
#  source     = "./modules/tfe_project"
#  organization = var.org_name
#  for_each = toset(var.project_list)
#  name     = each.key
#}


resource "tfe_project" "project" {
  organization = var.org_name
  for_each = toset(var.project_list)
  name     = each.key
}
