resource "google_container_cluster" "primary" {
  name               = "${var.name}"
  description        = "${var.description}"
  zone               = "${var.zone}"
  project = "${var.project_name}"
  min_master_version = "${var.min_master_version}"

  additional_zones = "${var.additional_zones}"

  master_auth {
    username = "${var.username}"
    password = "${var.password}"
  }

  addons_config {
    kubernetes_dashboard {
      disabled = "${var.kubernetes_dashboard_disabled}"
    }
  }


  monitoring_service = "none"
  logging_service    = "none"
  node_pool = "${var.node_pool}"
  network  = "${var.network}"
  subnetwork = "${var.subnetwork}"
}
