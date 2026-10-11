output "external_metadatas_lookup_external_metadata" {
  description = "Map of external_metadata values across all external_metadatas_lookup, keyed the same as var.external_metadatas_lookup except keys with no external_metadata are omitted"
  value       = { for k, v in data.databricks_external_metadatas.external_metadatas_lookup : k => v.external_metadata if v.external_metadata != null && length(v.external_metadata) > 0 }
}
output "external_metadatas_lookup_page_size" {
  description = "Map of page_size values across all external_metadatas_lookup, keyed the same as var.external_metadatas_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_external_metadatas.external_metadatas_lookup : k => v.page_size if v.page_size != null }
}
output "external_metadatas_lookup_provider_config" {
  description = "Map of provider_config values across all external_metadatas_lookup, keyed the same as var.external_metadatas_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_external_metadatas.external_metadatas_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

