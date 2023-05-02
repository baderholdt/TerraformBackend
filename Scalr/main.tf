##########################################################################################
################################# PROVIDER DEFINITION ####################################
##########################################################################################

terraform {
  required_version = ">= 1.1.6"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.53.0"
    }
  }

  backend "remote" {
    hostname = "scalr.prod-us.alarm.com"
    organization = "env-uhb2h41em50np2o"

    workspaces {
      name = "terraform-backend-scalr"
    }
  }
}

provider "azurerm" {
  features {
  }
  
  client_id       = var.azurerm_client_id
  client_secret   = var.azurerm_client_secret
  tenant_id       = var.azurerm_tenant_id
  subscription_id = var.azurerm_subscription_id
}

##########################################################################################
##################################### RESOURCES ##########################################
##########################################################################################

module "example_azure_resource" {
  source  = "aderholdtb.scalr.io/env-uhb2h41em50np2o/test/azurerm"
  version = "1.0.0"

  resource_group_name            = var.resource_group_name
  resource_group_location        = var.resource_group_location

  virtual_network_name           = var.virtual_network_name

  network_interface_name         = var.network_interface_name

  virtual_machine_name           = var.virtual_machine_name
  virtual_machine_size           = var.virtual_machine_size
  virtual_machine_iso_publisher  = var.virtual_machine_iso_publisher
  virtual_machine_iso_offer      = var.virtual_machine_iso_offer
  virtual_machine_iso_sku        = var.virtual_machine_iso_sku
  virtual_machine_iso_version    = var.virtual_machine_iso_version
}