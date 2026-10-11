output "ai_search_namespaces_account_id" {
  description = "Map of account_id values across all ai_search_namespaces, keyed the same as var.ai_search_namespaces except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_ai_search_namespace.ai_search_namespaces : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "ai_search_namespaces_created_at" {
  description = "Map of created_at values across all ai_search_namespaces, keyed the same as var.ai_search_namespaces except keys with no created_at are omitted"
  value       = { for k, v in cloudflare_ai_search_namespace.ai_search_namespaces : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "ai_search_namespaces_description" {
  description = "Map of description values across all ai_search_namespaces, keyed the same as var.ai_search_namespaces except keys with no description are omitted"
  value       = { for k, v in cloudflare_ai_search_namespace.ai_search_namespaces : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ai_search_namespaces_name" {
  description = "Map of name values across all ai_search_namespaces, keyed the same as var.ai_search_namespaces except keys with no name are omitted"
  value       = { for k, v in cloudflare_ai_search_namespace.ai_search_namespaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ai_search_namespaces_public_endpoint_id" {
  description = "Map of public_endpoint_id values across all ai_search_namespaces, keyed the same as var.ai_search_namespaces except keys with no public_endpoint_id are omitted"
  value       = { for k, v in cloudflare_ai_search_namespace.ai_search_namespaces : k => v.public_endpoint_id if v.public_endpoint_id != null && length(v.public_endpoint_id) > 0 }
}
output "ai_search_namespaces_public_endpoint_params" {
  description = "Map of public_endpoint_params values across all ai_search_namespaces, keyed the same as var.ai_search_namespaces except keys with no public_endpoint_params are omitted"
  value       = { for k, v in cloudflare_ai_search_namespace.ai_search_namespaces : k => v.public_endpoint_params if v.public_endpoint_params != null && length(v.public_endpoint_params) > 0 }
}

