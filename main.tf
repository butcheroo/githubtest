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
      key                  = "dev.terraform.tfstate"     
     
      access_key                  = "8y0xv3IQb/rgtYshdz0HVC5zM5zttXRDKUS1sDKbFjzHsfHO0l+gjo82Mz2RSv7Cm7LoGIMtnnYd+ASt8WcSDQ=="
    }

}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "dsdsdsdsmy"
  location = "westus2"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "example" {
  name                = "example-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "example" {
  name                = "example-app-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "some-value"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}
