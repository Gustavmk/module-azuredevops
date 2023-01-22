# Make sure to set the following environment variables:
#   AZDO_PERSONAL_ACCESS_TOKEN
#   AZDO_ORG_SERVICE_URL
terraform {
  required_providers {
    azuredevops = {
      source = "microsoft/azuredevops"
    }
    azurerm = {
      source = "hashicorp/azurerm"
    }
    template = {
      source = "hashicorp/template"
    }
  }
}

provider "azuredevops" {}
provider "azuread" {}
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}


module "project_test" {
  source = "git::https://github.com/Gustavmk/module-azuredevops.git"

  github_pat                  = var.github_pat
  github_serviceendpoint_name = var.github_serviceendpoint_name
  proj_description            = var.proj_description
  proj_name                   = var.proj_name
  proj_visibility             = "public"
  vg_allow_access             = true
  vg_description              = var.vg_description
  vg_name                     = var.vg_name
  vg_variables                = var.vg_variables
}
