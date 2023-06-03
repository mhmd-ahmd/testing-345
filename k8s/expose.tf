
resource "google_compute_global_address" "link_shortener_ip" {
  name = "link_shortener_ip"
}

resource "kubernetes_service" "link-shortener-service" {
  metadata {
    name      = "link-shortener"
    namespace = kubernetes_namespace.dev.metadata[0].name
    annotations = {
      "cloud.google.com/neg"            = "{\"ingress\": true}"
      "cloud.google.com/backend-config" = "{\"default\": \"my-backendconfig\"}"
    }
  }
  spec {
    selector = {
      app = "link-shortener"
    }
    port {
      port        = 80
      target_port = 8000
    }

    type = "ClusterIP"
  }
  depends_on = [
    kubernetes_deployment.sca-project-depl,
    kubernetes_manifest.backendconfig
  ]
}

//expose the service to the internet
resource "kubernetes_ingress" "link_shortener" {
  metadata {
    name      = "link_shortener"
    namespace = kubernetes_namespace.dev.metadata[0].name
    annotations = {
      "networking.gke.io/v1beta1.FrontendConfig"    = "my-frontendconfig"
      "kubernetes.io/ingress.global-static-ip-name" = "link_shortener_ip"
    }
  }
  spec {
    tls {
      secret_name = kubernetes_secret.tls_cred.metadata[0].name
    }
    backend {
      service_name = kubernetes_service.link-shortener-service.metadata[0].name
      service_port = 5000
    }
  }
  depends_on = [
    kubernetes_secret.tls_cred,
    kubernetes_service.link-shortener-service,
    kubernetes_manifest.frontendconfig
  ]
}


