resource "digitalocean_container_registry" "image-registry" {
  name                   = "mat-n-image-registry"
  subscription_tier_slug = "basic"
}