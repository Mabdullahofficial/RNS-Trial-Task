resource "google_compute_global_address" "default" {
  name = "load-balancer-ip"
}

resource "google_compute_url_map" "default" {
  name            = "cloudrun-url-map"
  default_service = google_cloud_run_service.service.status[0].url
}

resource "google_compute_target_http_proxy" "default" {
  name    = "http-lb-proxy"
  url_map = google_compute_url_map.default.self_link
}

resource "google_compute_global_forwarding_rule" "default" {
  name       = "http-lb-forwarding-rule"
  target     = google_compute_target_http_proxy.default.self_link
  port_range = "80"
  ip_address = google_compute_global_address.default.address
}
