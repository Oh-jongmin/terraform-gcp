resource "google_compute_network" "my-vpc" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "web-subnet" {
  name          = "web-subnet"
  ip_cidr_range = "10.10.10.0/24"
  region        = "var.region"
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "db-subnet" {
  name          = "db-subnet"
  ip_cidr_range = "10.10.20.0/24"
  region        = "var.region"
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh-from-external"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web"]
}


