# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
   backend "azurerm" {
      resource_group_name  = "privdns-rg"
      storage_account_name = "tfstatetfowler"
      container_name       = "tfstate"
      key                  = "8y0xv3IQb/rgtYshdz0HVC5zM5zttXRDKUS1sDKbFjzHsfHO0l+gjo82Mz2RSv7Cm7LoGIMtnnYd+ASt8WcSDQ=="
    }

}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "dsdsdsdsmy"
  location = "westus2"
}

