locals {
  ip_filepath = "ips.json"
  common_tags = {
    Service    = "Curso Terraform"
    ManagedBy  = "Terraform"
    Enviroment = var.environment
    Owner      = "Atila Rampazo"
  }
}
