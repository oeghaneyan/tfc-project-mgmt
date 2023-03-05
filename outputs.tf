output "project_list" {
  description = "List of projects including names, IDs, and organization of project"
  value       = { for p in tfe_project.project : p => project.id }
  #value       =  tfe_project.project[*]
}
