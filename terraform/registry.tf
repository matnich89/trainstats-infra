resource "digitalocean_container_registry" "trainstats" {
  name                   = "trainstats"
  subscription_tier_slug = "basic"
}