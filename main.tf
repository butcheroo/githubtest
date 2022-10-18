# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
   backend "azurerm" {
      resource_group_name  = "tfstatetf"
      storage_account_name = "stateterraformtf"
      container_name       = "state"
      key                  = "dev.terraform.tfstate"     
     
      
    }

}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "eastus"
}
