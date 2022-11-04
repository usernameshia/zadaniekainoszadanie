variable "instance" {
  type        = string
  description = "The instance of this resource"
}

variable "name" {
  type        = string
  description = "The name of the application within the Azure AD tenant. The final name is a concatenation of this value and '-<instance>' to generate a uniquely identifiable resource"
}

variable "location" {
  type        = string
  default     = "UK South"
  description = "The Azure geographical location to provision the resources in."
}

variable "account_tier" {
  type        = string
  description = "See https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account#account_tier"
}

variable "account_replication_type" {
  type        = string
  description = "See https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account#account_replication_type"
}

variable "tags" {
  type        = map(string)
  description = "Map of tags to associate with the resource group and storage account"
}