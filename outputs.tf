output "prometheus_workspaces_id" {
  description = "Map of id values across all prometheus_workspaces, keyed the same as var.prometheus_workspaces"
  value       = { for k, v in aws_prometheus_workspace.prometheus_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "prometheus_workspaces_alias" {
  description = "Map of alias values across all prometheus_workspaces, keyed the same as var.prometheus_workspaces"
  value       = { for k, v in aws_prometheus_workspace.prometheus_workspaces : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "prometheus_workspaces_arn" {
  description = "Map of arn values across all prometheus_workspaces, keyed the same as var.prometheus_workspaces"
  value       = { for k, v in aws_prometheus_workspace.prometheus_workspaces : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "prometheus_workspaces_kms_key_arn" {
  description = "Map of kms_key_arn values across all prometheus_workspaces, keyed the same as var.prometheus_workspaces"
  value       = { for k, v in aws_prometheus_workspace.prometheus_workspaces : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "prometheus_workspaces_logging_configuration" {
  description = "Map of logging_configuration values across all prometheus_workspaces, keyed the same as var.prometheus_workspaces"
  value       = { for k, v in aws_prometheus_workspace.prometheus_workspaces : k => one(v.logging_configuration) if v.logging_configuration != null && length(v.logging_configuration) > 0 }
}
output "prometheus_workspaces_prometheus_endpoint" {
  description = "Map of prometheus_endpoint values across all prometheus_workspaces, keyed the same as var.prometheus_workspaces"
  value       = { for k, v in aws_prometheus_workspace.prometheus_workspaces : k => v.prometheus_endpoint if v.prometheus_endpoint != null && length(v.prometheus_endpoint) > 0 }
}
output "prometheus_workspaces_region" {
  description = "Map of region values across all prometheus_workspaces, keyed the same as var.prometheus_workspaces"
  value       = { for k, v in aws_prometheus_workspace.prometheus_workspaces : k => v.region if v.region != null && length(v.region) > 0 }
}
output "prometheus_workspaces_tags" {
  description = "Map of tags values across all prometheus_workspaces, keyed the same as var.prometheus_workspaces"
  value       = { for k, v in aws_prometheus_workspace.prometheus_workspaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "prometheus_workspaces_tags_all" {
  description = "Map of tags_all values across all prometheus_workspaces, keyed the same as var.prometheus_workspaces"
  value       = { for k, v in aws_prometheus_workspace.prometheus_workspaces : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

