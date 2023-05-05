##########################################################################################
####################################### main.tf ##########################################
##########################################################################################

variable "resource_group_name" {
  type        = string
}

variable "resource_group_location" {
  type        = string
}

variable "virtual_network_name" {
  type        = string
}

variable "network_interface_name" {
  type        = string
}

variable "virtual_machine_name" {
  type        = string
}

variable "virtual_machine_size" {
  type        = string
}

variable "virtual_machine_iso_publisher" {
  type        = string
}

variable "virtual_machine_iso_offer" {
  type        = string
}

variable "virtual_machine_iso_sku" {
  type        = string
}

variable "virtual_machine_iso_version" {
  type        = string
}

variable "virtual_machine_admin_username" {
  type        = string
}

variable "virtual_machine_admin_password" {
  type        = string
}

##########################################################################################
################################ SCALR DEFINITIONS #######################################
##########################################################################################

variable "azurerm_client_id" {
  type        = string
  description = "Azure Cient ID to run terraform with"
}

variable "azurerm_client_secret" {
  type        = string
  description = "Azure Cient Secret to run terraform with"
}

variable "azurerm_tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}

variable "azurerm_subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}