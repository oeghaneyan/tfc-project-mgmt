output "project_list" {
  description = "List of projects including names, IDs, and organization of project"
#  value       = [ for project in tfe_project.project : project.id ]
  value       =  map (tfe_project.project[*])
}
