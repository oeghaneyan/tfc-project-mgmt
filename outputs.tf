output "project_list" {
  description = "List of project names with corresponding project id"
  value       = {
    for name, project in tfe_project.project : name => project.id
  }
#  value       = toset([ for project in tfe_project.project : project.id])
#  value       = [ for project in tfe_project.project : project.id ]
#  value       =  tfe_project.project[*]

}
