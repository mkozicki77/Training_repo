# resource "local_file" "kubeconfig" {
#   depends_on   = [azurerm_kubernetes_cluster.learning_cluster]
#   filename     = "kubeconfig"
#   content      = azurerm_kubernetes_cluster.learning_cluster.kube_config_raw
# }

