# TFC/TFE Project Managment with a TF Output of the Project ID

This repository documents an example workflow for managing TFC/TFE projects that has an output of the project ID. 

## Current Challenge 

As noted in the open issue [here](https://github.com/hashicorp/terraform-provider-tfe/issues/782) there is currently no project_id data block for pre-existing projects. This could be probelematic for teams who would like to integrate projects in their workflow and require a project id for those integrations. 

## Solution

Create all projects with with TF and have a tf output for the project id, then share that output within the organization.

**Considerations**
* Projects should not be created through UI - Reccomended to disable permissions to create projects
* Ideally all projects are managed from a single repository
* Workspace outputs need to be shared with other workspaces that need access to project_id
