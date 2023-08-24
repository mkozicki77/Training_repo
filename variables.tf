variable resource_group_name {
  type        = string
  default     = "K8s_training_cluster"
  description = "name of the resource group"
}

variable location {
  type        = string
  default     = "northeurope"
  description = "Location "
}
variable k8s_cluster_name {
  type        = string
  default     = "K8s_training_cluster"
  description = "name of the resource group"
}
variable dns_prefix {
  type        = string
  default     = "exampleaks1"
  description = "description"
}
variable vm_size  {
  type        = string
  default     = "standard_d2_v2"
  description = "description"
}
variable node_count  {
  type        = number
  default     = 1
  description = "Node count number for Node Pool"
}
variable storage_account_name {
  type        = string
  default     = "tfstatek8slearning"
  description = "the name of storage account where tfstate will be hold"
}

variable container_name {
  type        = string
  default     = "tfstate"
  description = "the name of container where tfstate will be hold"
}
