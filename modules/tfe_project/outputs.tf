output "project_list" {
  description = "List of projects including names, IDs, and organization of project"
  value       =  tfe_project.project[*]
}
