
resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name    = "trainstats-cluster"
  region  = "ams3"
  version = "1.31.1-do.3"

  node_pool {
    name       = "trainstats-worker-pool"
    size       = "s-2vcpu-4gb"
    node_count = 2
  }
}

output "cluster_id" {
  value = digitalocean_kubernetes_cluster.kubernetes_cluster.id
}

output "cluster_endpoint" {
  value = digitalocean_kubernetes_cluster.kubernetes_cluster.endpoint
}