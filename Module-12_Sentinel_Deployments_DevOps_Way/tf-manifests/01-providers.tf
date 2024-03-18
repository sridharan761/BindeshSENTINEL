terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = "37a0d9a9-47625714ce1e"
  tenant_id       = "9c4a49748f2d44da"
  client_id       = "747eb86b3c417"
  client_secret   = "z9_8Q~mAKVmfNibjJ"
}
