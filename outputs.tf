output "rg_name" {
  value = azurerm_resource_group.tf-ai-demo.name
}

output "aks_name" {
  value = azurerm_kubernetes_cluster.tf-ai-demo.name
}

output "ai_model_name" {
  value = var.openai_model_name
}

output "ai_openai_deployment_name" {
  value = azurerm_cognitive_account.tf-ai-demo.name
}

output "ai_endpoint" {
  value = azurerm_cognitive_account.tf-ai-demo.endpoint
}

output "ai_key" {
  value     = azurerm_cognitive_account.tf-ai-demo.primary_access_key
  sensitive = true
}

output "ai_managed_identity_client_id" {
  value = azurerm_user_assigned_identity.tf-ai-demo.client_id
}

output "sb_namespace_host" {
  value = "${azurerm_servicebus_namespace.tf-ai-demo.name}.servicebus.windows.net"
}

output "sb_namespace_uri" {
  value     = "amqps://${azurerm_servicebus_namespace.tf-ai-demo.name}.servicebus.windows.net"
  sensitive = true
}

output "sb_listener_username" {
  value = azurerm_servicebus_namespace_authorization_rule.tf-ai-demo.name
}

output "sb_listener_key" {
  value     = azurerm_servicebus_namespace_authorization_rule.tf-ai-demo.primary_key
  sensitive = true
}

output "sb_sender_username" {
  value = azurerm_servicebus_queue_authorization_rule.tf-ai-demo.name
}

output "sb_sender_key" {
  value     = azurerm_servicebus_queue_authorization_rule.tf-ai-demo.primary_key
  sensitive = true
}

output "db_account_name" {
  value = azurerm_cosmosdb_account.tf-ai-demo.name
}

output "db_uri" {
  value = "mongodb://${azurerm_cosmosdb_account.tf-ai-demo.name}.mongo.cosmos.azure.com:10255/?retryWrites=false"
}

output "db_key" {
  value     = azurerm_cosmosdb_account.tf-ai-demo.primary_key
  sensitive = true
}

output "k8s_namespace" {
  value = var.k8s_namespace
}

