# TFC/TFE Project Managment with a TF Output of the Project ID

This repository documents an example workflow for managing TFC/TFE projects that has an output of the project ID. 

## Current Challenge 

As noted in the open issue [here](https://github.com/hashicorp/terraform-provider-tfe/issues/782) there is currently no project_id data block for TFC projects. This could be probelematic for teams who would like to integrate projects in their workflow and require a project id for those integrations. 

## Solution

Create all projects with with TF and have a tf output for the project id, then share that output within the organization.

## Example of Leveraging Project ID Output

The below repo references the output from this workspace to create a new workspace. Most notably, it shows how to retrieve the id for a given project that was created from this repository. 

https://github.com/omeeomi/tfc-project-list-test/

**Considerations**
* Projects created outside this workspace will not have a Project ID recorded, so projects should not be created through UI
* To enforce all projects be crated through IaC, I reccomend to disable permissions to create projects manually in UI
* Ideally all projects are created from a single repository to simplify things
* Workspace outputs need to be shared with other workspaces that need access to project_id
* The API token used needs to have permissions to create/manage workspaces & projects
