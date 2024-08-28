# Outputs do Resource Group
output "resource_group_name" {
  description = "Nome do Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "Localização do Resource Group"
  value       = azurerm_resource_group.rg.location
}

# Outputs do Azure Data Factory
output "data_factory_name" {
  description = "Nome do Azure Data Factory"
  value       = module.data_factory.adf_name
}

# Outputs do Azure Databricks
output "databricks_workspace_url" {
  description = "URL do workspace do Azure Databricks"
  value       = module.databricks.workspace_url
}

# Outputs do Azure Synapse Analytics
output "synapse_workspace_name" {
  description = "Nome do workspace do Azure Synapse Analytics"
  value       = module.synapse.synapse_workspace_name
}

# Outputs do Azure Data Lake Storage
output "storage_account_name" {
  description = "Nome da conta de armazenamento do Azure Data Lake Storage"
  value       = module.storage.storage_account_name
}
