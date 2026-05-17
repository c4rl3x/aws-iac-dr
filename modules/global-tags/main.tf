locals {
  # Define tags that must be present on EVERY resource
  standard_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    DR_Ready    = var.environment == "drp" ? "true" : "false"
    Commit      = var.committags
  }

  all_tags = merge(local.standard_tags, {
    for k, v in yamldecode(file("./extra_tags.yaml")) :
      k => v
  })
}