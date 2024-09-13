resource "google_cloud_run_service" "service" {
  name     = var.cloudrun_service_name
  location = var.region

  template {
    spec {
      containers {
        image = var.container_image

        env {
          name  = "DB_HOST"
          value = google_sql_database_instance.db.connection_name
        }
        env {
          name  = "DB_USER"
          value = var.db_user
        }
        env {
          name  = "DB_PASSWORD"
          value = var.db_password
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }

  depends_on = [google_project_service.run]
}
