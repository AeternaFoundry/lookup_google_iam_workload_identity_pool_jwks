output "iam_workload_identity_pool_jwks_lookup_id" {
  description = "Map of id values across all iam_workload_identity_pool_jwks_lookup, keyed the same as var.iam_workload_identity_pool_jwks_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_iam_workload_identity_pool_jwks.iam_workload_identity_pool_jwks_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_workload_identity_pool_jwks_lookup_jwks_json" {
  description = "Map of jwks_json values across all iam_workload_identity_pool_jwks_lookup, keyed the same as var.iam_workload_identity_pool_jwks_lookup except keys with no jwks_json are omitted"
  value       = { for k, v in data.google_iam_workload_identity_pool_jwks.iam_workload_identity_pool_jwks_lookup : k => v.jwks_json if v.jwks_json != null && length(v.jwks_json) > 0 }
}
output "iam_workload_identity_pool_jwks_lookup_keys" {
  description = "Map of keys values across all iam_workload_identity_pool_jwks_lookup, keyed the same as var.iam_workload_identity_pool_jwks_lookup except keys with no keys are omitted"
  value       = { for k, v in data.google_iam_workload_identity_pool_jwks.iam_workload_identity_pool_jwks_lookup : k => v.keys if v.keys != null && length(v.keys) > 0 }
}
output "iam_workload_identity_pool_jwks_lookup_resource_name" {
  description = "Map of resource_name values across all iam_workload_identity_pool_jwks_lookup, keyed the same as var.iam_workload_identity_pool_jwks_lookup except keys with no resource_name are omitted"
  value       = { for k, v in data.google_iam_workload_identity_pool_jwks.iam_workload_identity_pool_jwks_lookup : k => v.resource_name if v.resource_name != null && length(v.resource_name) > 0 }
}

