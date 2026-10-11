variable "ai_search_namespaces" {
  description = <<EOT
Map of ai_search_namespaces, attributes below
Required:
    - account_id
    - name
Optional:
    - description
    - public_endpoint_params
EOT

  type = map(object({
    account_id  = string
    name        = string
    description = optional(string)
    public_endpoint_params = optional(object({
      authorized_hosts = optional(list(string))
      chat_completions_endpoint = optional(object({
        disabled = optional(bool)
      }))
      custom_domains         = optional(list(string))
      default_domain_enabled = optional(bool)
      enabled                = optional(bool)
      instances_allowed      = optional(list(string))
      mcp = optional(object({
        description = optional(string)
        disabled    = optional(bool)
      }))
      rate_limit = optional(object({
        period_ms = optional(number)
        requests  = optional(number)
        technique = optional(string)
      }))
      search_endpoint = optional(object({
        disabled = optional(bool)
      }))
    }))
  }))
}

