terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}

  # The CI identity cannot register every Azure provider at subscription scope.
  # Register required providers separately, or grant it provider-registration rights.
  resource_provider_registrations = "none"
}

variable "location" {
  description = "Azure region for the resource group."
  type        = string
  default     = "East US"
}

resource "azurerm_resource_group" "main" {
  name     = "rsg-from-terrraform"
  location = var.location
}
