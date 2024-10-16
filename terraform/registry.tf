resource "digitalocean_container_registry" "trainstats-realtime" {
  name                   = "trainstats-realtime"
  subscription_tier_slug = "starter"
}

resource "digitalocean_container_registry" "trainstats-ui" {
  name = "trainstats-ui"
  subscription_tier_slug = "starter"
}