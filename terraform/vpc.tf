
resource "digitalocean_vpc" "k8s_vpc" {
  name     = "k8s-vpc-ams"
  region   = "ams3"  # Amsterdam region
  ip_range = "10.10.0.0/16"
}