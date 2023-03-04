output "project_id" {
  description = "IDs of each project created"
  value       = tfe_project.project.key.id
}
