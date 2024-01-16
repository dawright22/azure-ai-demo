resource "helm_release" "vault" {
  name       = "vault"
  chart      = "hashicorp/vault"

  set {
    name = "server.dev.enabled"
    value = "true"
  }

  set {
    name = "server.dev.devRootToken"
    value = "AzureA!dem0"
  }

  set {
    name = "ui.enabled"
    value = "true"
  }

  set {
    name = "ui.serviceType"
    value = "LoadBalancer"
  }

set {
  name = "ui.serviceNodePort"
  value = "null"
}
  set {
    name = "ui.externalPort"
    value = "8200"
  }
}

# This is the same as the above but in helm commands
# helm install vault hashicorp/vault \
#   --set='server.dev.enabled=true' \
#   --set='server.dev.devRootToken=AzureA!dem0' \
#   --set='ui.enabled=true' \
#   --set='ui.serviceType=LoadBalancer' \
#   --set='ui.serviceNodePort=null' \
#   --set='ui.externalPort=8200' 


# Cert Manager
resource "kubernetes_namespace" "CertManager" {
  metadata {
    name = "cert-manager"
  }
}
resource "helm_release" "CertManger" {
  name             = "cert-manager"
  namespace        = kubernetes_namespace.CertManager.metadata[0].name
  create_namespace = false
  chart            = "cert-manager"
  repository       = "https://charts.jetstack.io"
  version          = "v1.13.3"

  set {
    name  = "installCRDs"
    value = "true"
  }
  set {
    name  = "prometheus.enabled"
    value = "false"
  }
}

# Traefikkubectl 
resource "helm_release" "traefik" {
  name       = "traefik"
  repository = "https://helm.traefik.io/traefik"
  chart      = "traefik"
  version    = "10.14.2"
  namespace  = "default"

  set {
    name  = "ports.web.redirectTo"
    value = "websecure"
  }

  # Trust private AKS IP range
  set {
    name  = "additionalArguments"
    value = "{--entryPoints.websecure.forwardedHeaders.trustedIPs=10.0.0.0/8}"
  }

  set {
    name = "ingressRoute.dashboard.enabled"
    value = "false"
  }
}