terraform {
  required_version = ">= 0.14.0"

  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "~> 0.1.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.41.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "~> 2.1.2"
    }
  }

  #  backend "azurerm" {}
}

provider "azuread" {}
provider "azuredevops" {}
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
