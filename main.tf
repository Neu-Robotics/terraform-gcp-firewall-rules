resource "google_compute_firewall" "this" {
  name      = var.name
  network   = var.network
  description = "Creates Firewall rule targetting tagged instances"

  allow {
    protocol = var.protocol
    ports    = var.ports
  }
  target_tags   = ["${var.name}"]
  source_ranges = var.source_ranges
}
