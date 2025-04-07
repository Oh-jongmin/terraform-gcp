resource "google_compute_instance" "web-vm" {
  name         = "web-vm"
  machine_type = "e2-micro"
  zone         = var.zone
  tags         = ["web"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.web-subnet.name
    access_config {}
    # External IP 활성화
  }

  metadata_startup_script = <<-EOT
    sudo apt-get update
    sudo apt-get install -y apache2
  EOT
}

resource "google_compute_instance" "db_vm" {
  name         = "db-vm"
  machine_type = "e2-micro"
  zone         = var.zone
  tags         = ["db"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.db_subnet.name
    # access_config 없음 = External IP 없음 (internal only)
  }

  metadata_startup_script = <<-EOT
    sudo apt-get update
    sudo apt-get install -y openssh-server
  EOT
}

