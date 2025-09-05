variable "resource_group_name" {
  description = "Nome do Resource Group"
  type        = string
  default     = "rg-redhat-vm-001"
}

variable "subscription_id" {
  description = "ID da Subscription da Azure"
  type        = string
  default     = "247f1805-23e4-49df-8359-ce71728346a3"
}

variable "vm_name" {
  description = "Nome da VM"
  type        = string
  default     = "redhat-vm-001"
}
