provider "azurerm" {
  features {}
}

# Criação de Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Provisionamento do Azure Data Factory
module "data_factory" {
  source = "./adf.tf"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

# Provisionamento do Azure Databricks
module "databricks" {
  source = "./databricks.tf"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

# Provisionamento do Azure Synapse Analytics
module "synapse" {
  source = "./synapse.tf"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}

# Provisionamento do Azure Data Lake Storage
module "storage" {
  source = "./storage.tf"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}
