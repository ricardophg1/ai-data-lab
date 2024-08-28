variable "resource_group_name" {
  description = "Nome do Resource Group"
  type        = string
  default     = "my-resource-group"
}

variable "location" {
  description = "Localização dos recursos no Azure"
  type        = string
  default     = "East US"
}

variable "tags" {
  description = "Tags para os recursos"
  type        = map(string)
  default     = {
    environment = "dev"
    project     = "data-platform"
  }
}

# Variáveis para os recursos específicos
variable "adf_name" {
  description = "Nome do Azure Data Factory"
  type        = string
  default     = "my-data-factory"
}

variable "databricks_workspace_name" {
  description = "Nome do workspace do Azure Databricks"
  type        = string
  default     = "my-databricks-workspace"
}

variable "synapse_workspace_name" {
  description = "Nome do workspace do Azure Synapse Analytics"
  type        = string
  default     = "my-synapse-workspace"
}

variable "storage_account_name" {
  description = "Nome da conta de armazenamento do Azure Data Lake Storage"
  type        = string
  default     = "mystorageaccount"
}
