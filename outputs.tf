output "project_id" {
  description = "IDs of each project created"
  for_each = toset(var.project_list)
  value       = tfe_project.project[each.key].id
}
