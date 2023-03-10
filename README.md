# Repo: module-azuredevops - Terraform Azure DevOps Module

This module creates the following resources:

* Azure DevOps Project
* Variable Group
* GitHub Service Connection
* TODO: Sonarqube Connection
* TODO: Docker Registry Connection


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_pat"></a> [github\_pat](#input\_github\_pat) | The Personal Access Token for Github. | `string` | n/a | yes |
| <a name="input_github_serviceendpoint_description"></a> [github\_serviceendpoint\_description](#input\_github\_serviceendpoint\_description) | GitHub Service Endpoint description. | `string` | `"Managed by Terraform"` | no |
| <a name="input_github_serviceendpoint_name"></a> [github\_serviceendpoint\_name](#input\_github\_serviceendpoint\_name) | GitHub Service Endpoint name. | `string` | n/a | yes |
| <a name="input_proj_description"></a> [proj\_description](#input\_proj\_description) | Azure DevOps Project description. | `string` | n/a | yes |
| <a name="input_proj_features"></a> [proj\_features](#input\_proj\_features) | Project features. | `map(string)` | <pre>{<br>  "artifacts": "disabled",<br>  "boards": "disabled",<br>  "pipelines": "enabled",<br>  "repositories": "enabled",<br>  "testplans": "disabled"<br>}</pre> | no |
| <a name="input_proj_name"></a> [proj\_name](#input\_proj\_name) | Azure DevOps Project name. | `string` | n/a | yes |
| <a name="input_proj_vcs"></a> [proj\_vcs](#input\_proj\_vcs) | Project Version Control. | `string` | `"Git"` | no |
| <a name="input_proj_visibility"></a> [proj\_visibility](#input\_proj\_visibility) | Project visibility. | `string` | `"private"` | no |
| <a name="input_proj_wi_template"></a> [proj\_wi\_template](#input\_proj\_wi\_template) | Project Work Item template. | `string` | `"Agile"` | no |
| <a name="input_vg_allow_access"></a> [vg\_allow\_access](#input\_vg\_allow\_access) | Boolean that indicate if this variable group is shared by all pipelines of this project. | `bool` | `false` | no |
| <a name="input_vg_description"></a> [vg\_description](#input\_vg\_description) | The description of the Variable Group. | `string` | n/a | yes |
| <a name="input_vg_name"></a> [vg\_name](#input\_vg\_name) | The name of the Variable Group. | `string` | n/a | yes |
| <a name="input_vg_variables"></a> [vg\_variables](#input\_vg\_variables) | One or more variable blocks as documented below.<br><br>A variable block supports the following:<br><br>  *name - (Required) The key value used for the variable. Must be unique within the Variable Group.<br>* value - (Optional) The value of the variable. If omitted, it will default to empty string.<br>  * is\_secret - (Optional) A boolean flag describing if the variable value is sensitive. Defaults to false. | <pre>list(object({<br>    name      = string<br>    value     = string<br>    is_secret = bool<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ghsc_name"></a> [ghsc\_name](#output\_ghsc\_name) | n/a |
| <a name="output_proj_id"></a> [proj\_id](#output\_proj\_id) | n/a |
| <a name="output_proj_name"></a> [proj\_name](#output\_proj\_name) | n/a |
| <a name="output_vg_id"></a> [vg\_id](#output\_vg\_id) | n/a |
| <a name="output_vg_name"></a> [vg\_name](#output\_vg\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

# References

* [Out-of-the-box pre-commit hooks](https://github.com/pre-commit/pre-commit-hooks)
* [Gruntwork pre-commit hooks](https://github.com/gruntwork-io/pre-commit)
* [Naming rules and restrictions for Azure resources](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftnetwork)
* [Resource providers for Azure services](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/azure-services-resource-providers)
* [Azure Define your naming convention](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming)
* [Azure Recommended abbreviations for Azure resource types](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations)
* [Terraform Versions Constraints](https://www.terraform.io/docs/configuration/version-constraints.html)
