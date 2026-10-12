output "database_secrets_mounts_id" {
  description = "Map of id values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no id are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_secrets_mounts_accessor" {
  description = "Map of accessor values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no accessor are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.accessor if v.accessor != null && length(v.accessor) > 0 }
}
output "database_secrets_mounts_allowed_managed_keys" {
  description = "Map of allowed_managed_keys values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no allowed_managed_keys are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.allowed_managed_keys if v.allowed_managed_keys != null && length(v.allowed_managed_keys) > 0 }
}
output "database_secrets_mounts_allowed_response_headers" {
  description = "Map of allowed_response_headers values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no allowed_response_headers are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.allowed_response_headers if v.allowed_response_headers != null && length(v.allowed_response_headers) > 0 }
}
output "database_secrets_mounts_audit_non_hmac_request_keys" {
  description = "Map of audit_non_hmac_request_keys values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no audit_non_hmac_request_keys are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.audit_non_hmac_request_keys if v.audit_non_hmac_request_keys != null && length(v.audit_non_hmac_request_keys) > 0 }
}
output "database_secrets_mounts_audit_non_hmac_response_keys" {
  description = "Map of audit_non_hmac_response_keys values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no audit_non_hmac_response_keys are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.audit_non_hmac_response_keys if v.audit_non_hmac_response_keys != null && length(v.audit_non_hmac_response_keys) > 0 }
}
output "database_secrets_mounts_cassandra" {
  description = "Map of cassandra values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no cassandra are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.cassandra if v.cassandra != null && length(v.cassandra) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_couchbase" {
  description = "Map of couchbase values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no couchbase are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.couchbase if v.couchbase != null && length(v.couchbase) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_default_lease_ttl_seconds" {
  description = "Map of default_lease_ttl_seconds values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no default_lease_ttl_seconds are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.default_lease_ttl_seconds if v.default_lease_ttl_seconds != null }
}
output "database_secrets_mounts_delegated_auth_accessors" {
  description = "Map of delegated_auth_accessors values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no delegated_auth_accessors are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.delegated_auth_accessors if v.delegated_auth_accessors != null && length(v.delegated_auth_accessors) > 0 }
}
output "database_secrets_mounts_description" {
  description = "Map of description values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no description are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.description if v.description != null && length(v.description) > 0 }
}
output "database_secrets_mounts_elasticsearch" {
  description = "Map of elasticsearch values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no elasticsearch are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.elasticsearch if v.elasticsearch != null && length(v.elasticsearch) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_engine_count" {
  description = "Map of engine_count values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no engine_count are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.engine_count if v.engine_count != null }
}
output "database_secrets_mounts_external_entropy_access" {
  description = "Map of external_entropy_access values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no external_entropy_access are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.external_entropy_access if v.external_entropy_access != null }
}
output "database_secrets_mounts_force_no_cache" {
  description = "Map of force_no_cache values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no force_no_cache are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.force_no_cache if v.force_no_cache != null }
}
output "database_secrets_mounts_hana" {
  description = "Map of hana values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no hana are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.hana if v.hana != null && length(v.hana) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_identity_token_key" {
  description = "Map of identity_token_key values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no identity_token_key are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.identity_token_key if v.identity_token_key != null && length(v.identity_token_key) > 0 }
}
output "database_secrets_mounts_influxdb" {
  description = "Map of influxdb values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no influxdb are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.influxdb if v.influxdb != null && length(v.influxdb) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_listing_visibility" {
  description = "Map of listing_visibility values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no listing_visibility are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.listing_visibility if v.listing_visibility != null && length(v.listing_visibility) > 0 }
}
output "database_secrets_mounts_local" {
  description = "Map of local values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no local are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.local if v.local != null }
}
output "database_secrets_mounts_max_lease_ttl_seconds" {
  description = "Map of max_lease_ttl_seconds values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no max_lease_ttl_seconds are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.max_lease_ttl_seconds if v.max_lease_ttl_seconds != null }
}
output "database_secrets_mounts_mongodb" {
  description = "Map of mongodb values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no mongodb are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.mongodb if v.mongodb != null && length(v.mongodb) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_mongodbatlas" {
  description = "Map of mongodbatlas values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no mongodbatlas are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.mongodbatlas if v.mongodbatlas != null && length(v.mongodbatlas) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_mssql" {
  description = "Map of mssql values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no mssql are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.mssql if v.mssql != null && length(v.mssql) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_mysql" {
  description = "Map of mysql values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no mysql are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.mysql if v.mysql != null && length(v.mysql) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_mysql_aurora" {
  description = "Map of mysql_aurora values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no mysql_aurora are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.mysql_aurora if v.mysql_aurora != null && length(v.mysql_aurora) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_mysql_legacy" {
  description = "Map of mysql_legacy values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no mysql_legacy are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.mysql_legacy if v.mysql_legacy != null && length(v.mysql_legacy) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_mysql_rds" {
  description = "Map of mysql_rds values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no mysql_rds are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.mysql_rds if v.mysql_rds != null && length(v.mysql_rds) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_namespace" {
  description = "Map of namespace values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no namespace are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "database_secrets_mounts_options" {
  description = "Map of options values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no options are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.options if v.options != null && length(v.options) > 0 }
}
output "database_secrets_mounts_oracle" {
  description = "Map of oracle values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no oracle are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.oracle if v.oracle != null && length(v.oracle) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_passthrough_request_headers" {
  description = "Map of passthrough_request_headers values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no passthrough_request_headers are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.passthrough_request_headers if v.passthrough_request_headers != null && length(v.passthrough_request_headers) > 0 }
}
output "database_secrets_mounts_path" {
  description = "Map of path values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no path are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.path if v.path != null && length(v.path) > 0 }
}
output "database_secrets_mounts_plugin_version" {
  description = "Map of plugin_version values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no plugin_version are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.plugin_version if v.plugin_version != null && length(v.plugin_version) > 0 }
}
output "database_secrets_mounts_postgresql" {
  description = "Map of postgresql values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no postgresql are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.postgresql if v.postgresql != null && length(v.postgresql) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_redis" {
  description = "Map of redis values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no redis are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.redis if v.redis != null && length(v.redis) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_redis_elasticache" {
  description = "Map of redis_elasticache values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no redis_elasticache are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.redis_elasticache if v.redis_elasticache != null && length(v.redis_elasticache) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_redshift" {
  description = "Map of redshift values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no redshift are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.redshift if v.redshift != null && length(v.redshift) > 0 }
  sensitive   = true
}
output "database_secrets_mounts_seal_wrap" {
  description = "Map of seal_wrap values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no seal_wrap are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.seal_wrap if v.seal_wrap != null }
}
output "database_secrets_mounts_snowflake" {
  description = "Map of snowflake values across all database_secrets_mounts, keyed the same as var.database_secrets_mounts except keys with no snowflake are omitted"
  value       = { for k, v in vault_database_secrets_mount.database_secrets_mounts : k => v.snowflake if v.snowflake != null && length(v.snowflake) > 0 }
  sensitive   = true
}

