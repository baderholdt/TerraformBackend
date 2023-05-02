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
    organization = "env-ues7sioadjbkspg"

    workspaces {
      name = "azure-prod-sa02-coturn"
    }
  }
}

provider "azurerm" {
  features {
  }
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