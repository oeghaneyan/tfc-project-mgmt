output "project_list" {
  description = "List of projects including names, IDs, and organization of project"
  #value       = { for p in sort(keys(var.project_list)) : p => module.tfe_project[p].id }
  value       =  tfe_project.project[*]
}
