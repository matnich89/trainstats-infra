resource "digitalocean_container_registry" "image-registry" {
  name                   = "image-registry"
  subscription_tier_slug = "basic"
}