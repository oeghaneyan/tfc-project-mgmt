output "{var.org_name}" {
  description = "List of projects including names, IDs, and organization of project"
  value       =  tfe_project.project[*]
}
