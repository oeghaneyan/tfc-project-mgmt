resource "tfe_project" "project" {
  organization = var.org_name
  for_each = toset(var.project_list)
  name     = each.key
}
