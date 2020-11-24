output "kubernetes_deployment" {
  value = "${kubernetes_deployment.this.metadata.0.namespace}/${kubernetes_deployment.this.metadata.0.name}"
}