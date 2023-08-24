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

