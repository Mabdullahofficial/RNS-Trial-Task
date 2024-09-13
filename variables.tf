variable "project_id" {
  description = "Google Cloud project ID"
}

variable "region" {
  description = "Region where resources will be deployed"
  default     = "us-central1"
}

variable "db_instance_name" {
  description = "Cloud SQL database instance name"
  default     = "devops-db"
}

variable "db_user" {
  description = "Database username"
  default     = "admin"
}

variable "db_password" {
  description = "Database password"
  sensitive   = true
}

variable "cloudrun_service_name" {
  description = "Name of the CloudRun service"
  default     = "devops-service"
}

variable "container_image" {
  description = "Docker image to deploy to CloudRun"
}
