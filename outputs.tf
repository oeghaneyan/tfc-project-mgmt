output "project_list" {
  description = "List of project names with corresponding project id"
  value       = {
    for name, project in tfe_project.project : name => project.id
  }
}
