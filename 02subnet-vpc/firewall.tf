resource "google_compute_firewall" "allow-internal-ssh" {
  name    = "allow-ssh-from-web-to-db"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_tags = ["web"]
  target_tags = ["db"]
}