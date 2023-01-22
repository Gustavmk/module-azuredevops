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

  #  backend "azurerm" {}
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

  github_pat                  = ""
  github_serviceendpoint_name = ""
  proj_description            = ""
  proj_name                   = ""
  proj_visibility             = "public"
  vg_allow_access             = true
  vg_description              = ""
  vg_name                     = ""
  vg_variables                = ""
}
