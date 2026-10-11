variable "iam_workload_identity_pool_jwks_lookup" {
  description = <<EOT
Map of iam_workload_identity_pool_jwks_lookup, attributes below
Required:
    - resource_name
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    resource_name = string
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

