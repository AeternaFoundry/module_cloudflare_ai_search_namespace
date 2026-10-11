resource "cloudflare_ai_search_namespace" "ai_search_namespaces" {
  for_each = var.ai_search_namespaces

  account_id             = each.value.account_id
  name                   = each.value.name
  description            = each.value.description
  public_endpoint_params = each.value.public_endpoint_params
}

