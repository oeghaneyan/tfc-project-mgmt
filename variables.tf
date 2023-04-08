variable "hostname" {
  description = "Optional- defaults to Terraform Cloud `app.terraform.io`. Normally this is only set for self-managed TFE enviroments."
  type        = string
  default = "app.terraform.io"
}

variable "token" {
  description = "Token for TFC Organization."
  type        = string
  sensitive   = true
}

variable "org_name" {
  description = "Name of TFC Organization."
  type        = string
}

variable "project_list" {
  description = "Name of the TFC project"
  type        = list(string)
  default     = [
    "ProjectX", 
    "Test - Bulk Workspace Creation"
  ]
}
