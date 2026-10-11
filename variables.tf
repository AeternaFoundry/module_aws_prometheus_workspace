variable "prometheus_workspaces" {
  description = <<EOT
Map of prometheus_workspaces, attributes below
Optional:
    - alias
    - kms_key_arn
    - region
    - tags
    - tags_all
    - logging_configuration (block):
        - log_group_arn (required)
EOT

  type = map(object({
    alias       = optional(string)
    kms_key_arn = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    logging_configuration = optional(object({
      log_group_arn = string
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

