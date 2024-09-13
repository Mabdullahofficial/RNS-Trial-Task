output "db_instance_connection_name" {
  value = google_sql_database_instance.db.connection_name
}

output "cloudrun_url" {
  value = google_cloud_run_service.service.status[0].url
}

output "load_balancer_ip" {
  value = google_compute_global_address.default.address
}
