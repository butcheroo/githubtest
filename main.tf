# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
   backend "azurerm"
      resource_group_name  = "privdns_rg"
      storage_account_name = "tfstatefowler"
      container_name       = "tfstate"
      key                  = "dev.terraform.tfstate"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "dsdsdsdsmyTFResourceGroup"
  location = "westus2"
}
