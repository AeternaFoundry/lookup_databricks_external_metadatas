data "databricks_external_metadatas" "external_metadatas_lookup" {
  for_each = var.external_metadatas_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

