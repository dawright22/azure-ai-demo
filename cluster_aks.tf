resource "azurerm_kubernetes_cluster" "tf-ai-demo" {
  name                = "aks-${local.name}"
  location            = azurerm_resource_group.tf-ai-demo.location
  resource_group_name = azurerm_resource_group.tf-ai-demo.name
  dns_prefix          = "aks-${local.name}"

  default_node_pool {
    name       = "system"
    vm_size    = "Standard_D4s_v4"
    node_count = 3
  }

  identity {
    type = "SystemAssigned"
  }

  oidc_issuer_enabled       = true
  workload_identity_enabled = true

  lifecycle {
    ignore_changes = [
      monitor_metrics,
      azure_policy_enabled,
      microsoft_defender
    ]
  }
  tags = {
    environment = "terraform-ai-demo"
  }
}