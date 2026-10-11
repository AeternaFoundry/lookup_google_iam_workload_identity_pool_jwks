data "google_iam_workload_identity_pool_jwks" "iam_workload_identity_pool_jwks_lookup" {
  for_each = var.iam_workload_identity_pool_jwks_lookup

  resource_name = each.value.resource_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

