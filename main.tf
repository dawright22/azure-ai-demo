terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"

    }

    local = {
      source  = "hashicorp/local"
      version = "~>2.4.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "=3.5.1"
    }

      helm = {
      source  = "hashicorp/helm"
      version = "~> 2.0.2"
    }

    vault = {
      source  = "hashicorp/vault"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }

    cognitive_account {
      purge_soft_delete_on_destroy = true
    }
  }
  # skip_provider_registration = true
}

resource "random_integer" "tf-ai-demo" {
  min = 10
  max = 99
}

resource "random_pet" "tf-ai-demo" {
  length    = 2
  separator = ""
  keepers = {
    location = var.location
  }
}

locals {
  name     = "${random_pet.tf-ai-demo.id}${random_integer.tf-ai-demo.result}"
  location = var.location
}

data "azurerm_subscription" "current" {}
data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "tf-ai-demo" {
  name     = "rg-${local.name}"
  location = local.location
}

provider "kubernetes" {
  host                   = azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.host
  username               = azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.username
  password               = azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.password
  client_certificate     = base64decode(azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.client_certificate)
  client_key             = base64decode(azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.client_key)
  cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.cluster_ca_certificate)
}

provider "helm" {
  kubernetes {
  host                   = azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.host
  username               = azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.username
  password               = azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.password
  client_certificate     = base64decode(azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.client_certificate)
  client_key             = base64decode(azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.client_key)
  cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.tf-ai-demo.kube_config.0.cluster_ca_certificate)
  }
}