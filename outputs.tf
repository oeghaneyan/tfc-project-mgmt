output "project_id" {
  description = "IDs of each project created"
#  for_each = toset(var.project_list)
  value       = tfe_project.project.id
}

output "project_id" {
  description = "IDs of each project created"
  value       = tfe_project.project-test.id
}
