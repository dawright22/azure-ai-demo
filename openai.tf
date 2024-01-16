resource "azurerm_cognitive_account" "tf-ai-demo" {
  name                  = "aoai-${local.name}"
  location              = var.ai_location
  resource_group_name   = azurerm_resource_group.tf-ai-demo.name
  kind                  = "OpenAI"
  sku_name              = "S0"
  custom_subdomain_name = "aoai-${local.name}"
}

resource "azurerm_cognitive_deployment" "tf-ai-demo" {
  name                 = var.openai_model_name
  cognitive_account_id = azurerm_cognitive_account.tf-ai-demo.id

  model {
    format  = "OpenAI"
    name    = var.openai_model_name
    version = var.openai_model_version
  }

  scale {
    type     = "Standard"
    capacity = var.openai_model_capacity
  }
}

resource "azurerm_user_assigned_identity" "tf-ai-demo" {
  location            = var.ai_location
  name                = "aoai-${local.name}"
  resource_group_name = azurerm_resource_group.tf-ai-demo.name
}

resource "azurerm_federated_identity_credential" "tf-ai-demo" {
  name                = "aoai-${local.name}"
  resource_group_name = azurerm_resource_group.tf-ai-demo.name
  parent_id           = azurerm_user_assigned_identity.tf-ai-demo.id
  audience            = ["api://AzureADTokenExchange"]
  issuer              = azurerm_kubernetes_cluster.tf-ai-demo.oidc_issuer_url
  subject             = "system:serviceaccount:${var.k8s_namespace}:ai-service-account"
}

resource "azurerm_role_assignment" "tf-ai-demo_aoai_me" {
  principal_id         = data.azurerm_client_config.current.object_id
  role_definition_name = "Cognitive Services OpenAI User"
  scope                = azurerm_cognitive_account.tf-ai-demo.id
}

resource "azurerm_role_assignment" "tf-ai-demo_aoai_mi" {
  principal_id         = azurerm_user_assigned_identity.tf-ai-demo.principal_id
  role_definition_name = "Cognitive Services OpenAI User"
  scope                = azurerm_cognitive_account.tf-ai-demo.id
}
