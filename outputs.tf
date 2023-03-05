output "project_list" {
  description = "List of projects including names, IDs, and organization of project"
  value       = [ for project in tfe_project.project : project.name ]
  #value       =  tfe_project.project[*]
}
