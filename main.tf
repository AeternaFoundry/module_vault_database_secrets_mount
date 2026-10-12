resource "vault_database_secrets_mount" "database_secrets_mounts" {
  for_each = var.database_secrets_mounts

  path                         = each.value.path
  allowed_managed_keys         = each.value.allowed_managed_keys
  allowed_response_headers     = each.value.allowed_response_headers
  audit_non_hmac_request_keys  = each.value.audit_non_hmac_request_keys
  audit_non_hmac_response_keys = each.value.audit_non_hmac_response_keys
  default_lease_ttl_seconds    = each.value.default_lease_ttl_seconds
  delegated_auth_accessors     = each.value.delegated_auth_accessors
  description                  = each.value.description
  external_entropy_access      = each.value.external_entropy_access
  force_no_cache               = each.value.force_no_cache
  identity_token_key           = each.value.identity_token_key
  listing_visibility           = each.value.listing_visibility
  local                        = each.value.local
  max_lease_ttl_seconds        = each.value.max_lease_ttl_seconds
  namespace                    = each.value.namespace
  options                      = each.value.options
  passthrough_request_headers  = each.value.passthrough_request_headers
  plugin_version               = each.value.plugin_version
  seal_wrap                    = each.value.seal_wrap

  dynamic "cassandra" {
    for_each = each.value.cassandra != null ? each.value.cassandra : []
    content {
      allowed_roles                    = cassandra.value.allowed_roles
      connect_timeout                  = cassandra.value.connect_timeout
      consistency                      = cassandra.value.consistency
      data                             = cassandra.value.data
      disable_automated_rotation       = cassandra.value.disable_automated_rotation
      hosts                            = cassandra.value.hosts
      insecure_tls                     = cassandra.value.insecure_tls
      local_datacenter                 = cassandra.value.local_datacenter
      name                             = cassandra.value.name
      password                         = cassandra.value.password
      password_policy                  = cassandra.value.password_policy
      pem_bundle                       = cassandra.value.pem_bundle
      pem_json                         = cassandra.value.pem_json
      plugin_name                      = cassandra.value.plugin_name
      plugin_version                   = cassandra.value.plugin_version
      port                             = cassandra.value.port
      protocol_version                 = cassandra.value.protocol_version
      root_rotation_statements         = cassandra.value.root_rotation_statements
      rotation_period                  = cassandra.value.rotation_period
      rotation_schedule                = cassandra.value.rotation_schedule
      rotation_window                  = cassandra.value.rotation_window
      skip_static_role_import_rotation = cassandra.value.skip_static_role_import_rotation
      skip_verification                = cassandra.value.skip_verification
      socket_keep_alive                = cassandra.value.socket_keep_alive
      tls                              = cassandra.value.tls
      tls_server_name                  = cassandra.value.tls_server_name
      username                         = cassandra.value.username
      username_template                = cassandra.value.username_template
      verify_connection                = cassandra.value.verify_connection
    }
  }

  dynamic "couchbase" {
    for_each = each.value.couchbase != null ? each.value.couchbase : []
    content {
      allowed_roles                    = couchbase.value.allowed_roles
      base64_pem                       = couchbase.value.base64_pem
      bucket_name                      = couchbase.value.bucket_name
      data                             = couchbase.value.data
      disable_automated_rotation       = couchbase.value.disable_automated_rotation
      hosts                            = couchbase.value.hosts
      insecure_tls                     = couchbase.value.insecure_tls
      name                             = couchbase.value.name
      password                         = couchbase.value.password
      password_policy                  = couchbase.value.password_policy
      plugin_name                      = couchbase.value.plugin_name
      plugin_version                   = couchbase.value.plugin_version
      root_rotation_statements         = couchbase.value.root_rotation_statements
      rotation_period                  = couchbase.value.rotation_period
      rotation_schedule                = couchbase.value.rotation_schedule
      rotation_window                  = couchbase.value.rotation_window
      skip_static_role_import_rotation = couchbase.value.skip_static_role_import_rotation
      tls                              = couchbase.value.tls
      username                         = couchbase.value.username
      username_template                = couchbase.value.username_template
      verify_connection                = couchbase.value.verify_connection
    }
  }

  dynamic "elasticsearch" {
    for_each = each.value.elasticsearch != null ? each.value.elasticsearch : []
    content {
      allowed_roles                    = elasticsearch.value.allowed_roles
      ca_cert                          = elasticsearch.value.ca_cert
      ca_path                          = elasticsearch.value.ca_path
      client_cert                      = elasticsearch.value.client_cert
      client_key                       = elasticsearch.value.client_key
      data                             = elasticsearch.value.data
      disable_automated_rotation       = elasticsearch.value.disable_automated_rotation
      insecure                         = elasticsearch.value.insecure
      name                             = elasticsearch.value.name
      password                         = elasticsearch.value.password
      password_policy                  = elasticsearch.value.password_policy
      plugin_name                      = elasticsearch.value.plugin_name
      plugin_version                   = elasticsearch.value.plugin_version
      root_rotation_statements         = elasticsearch.value.root_rotation_statements
      rotation_period                  = elasticsearch.value.rotation_period
      rotation_schedule                = elasticsearch.value.rotation_schedule
      rotation_window                  = elasticsearch.value.rotation_window
      skip_static_role_import_rotation = elasticsearch.value.skip_static_role_import_rotation
      tls_server_name                  = elasticsearch.value.tls_server_name
      url                              = elasticsearch.value.url
      username                         = elasticsearch.value.username
      username_template                = elasticsearch.value.username_template
      verify_connection                = elasticsearch.value.verify_connection
    }
  }

  dynamic "hana" {
    for_each = each.value.hana != null ? each.value.hana : []
    content {
      allowed_roles                    = hana.value.allowed_roles
      connection_url                   = hana.value.connection_url
      data                             = hana.value.data
      disable_automated_rotation       = hana.value.disable_automated_rotation
      disable_escaping                 = hana.value.disable_escaping
      max_connection_lifetime          = hana.value.max_connection_lifetime
      max_idle_connections             = hana.value.max_idle_connections
      max_open_connections             = hana.value.max_open_connections
      name                             = hana.value.name
      password                         = hana.value.password
      password_policy                  = hana.value.password_policy
      password_wo                      = hana.value.password_wo
      password_wo_version              = hana.value.password_wo_version
      plugin_name                      = hana.value.plugin_name
      plugin_version                   = hana.value.plugin_version
      root_rotation_statements         = hana.value.root_rotation_statements
      rotation_period                  = hana.value.rotation_period
      rotation_schedule                = hana.value.rotation_schedule
      rotation_window                  = hana.value.rotation_window
      skip_static_role_import_rotation = hana.value.skip_static_role_import_rotation
      username                         = hana.value.username
      username_template                = hana.value.username_template
      verify_connection                = hana.value.verify_connection
    }
  }

  dynamic "influxdb" {
    for_each = each.value.influxdb != null ? each.value.influxdb : []
    content {
      allowed_roles                    = influxdb.value.allowed_roles
      connect_timeout                  = influxdb.value.connect_timeout
      data                             = influxdb.value.data
      disable_automated_rotation       = influxdb.value.disable_automated_rotation
      host                             = influxdb.value.host
      insecure_tls                     = influxdb.value.insecure_tls
      name                             = influxdb.value.name
      password                         = influxdb.value.password
      password_policy                  = influxdb.value.password_policy
      pem_bundle                       = influxdb.value.pem_bundle
      pem_json                         = influxdb.value.pem_json
      plugin_name                      = influxdb.value.plugin_name
      plugin_version                   = influxdb.value.plugin_version
      port                             = influxdb.value.port
      root_rotation_statements         = influxdb.value.root_rotation_statements
      rotation_period                  = influxdb.value.rotation_period
      rotation_schedule                = influxdb.value.rotation_schedule
      rotation_window                  = influxdb.value.rotation_window
      skip_static_role_import_rotation = influxdb.value.skip_static_role_import_rotation
      tls                              = influxdb.value.tls
      username                         = influxdb.value.username
      username_template                = influxdb.value.username_template
      verify_connection                = influxdb.value.verify_connection
    }
  }

  dynamic "mongodb" {
    for_each = each.value.mongodb != null ? each.value.mongodb : []
    content {
      allowed_roles                    = mongodb.value.allowed_roles
      connection_url                   = mongodb.value.connection_url
      data                             = mongodb.value.data
      disable_automated_rotation       = mongodb.value.disable_automated_rotation
      max_connection_lifetime          = mongodb.value.max_connection_lifetime
      max_idle_connections             = mongodb.value.max_idle_connections
      max_open_connections             = mongodb.value.max_open_connections
      name                             = mongodb.value.name
      password                         = mongodb.value.password
      password_policy                  = mongodb.value.password_policy
      password_wo                      = mongodb.value.password_wo
      password_wo_version              = mongodb.value.password_wo_version
      plugin_name                      = mongodb.value.plugin_name
      plugin_version                   = mongodb.value.plugin_version
      root_rotation_statements         = mongodb.value.root_rotation_statements
      rotation_period                  = mongodb.value.rotation_period
      rotation_schedule                = mongodb.value.rotation_schedule
      rotation_window                  = mongodb.value.rotation_window
      skip_static_role_import_rotation = mongodb.value.skip_static_role_import_rotation
      tls_ca                           = mongodb.value.tls_ca
      tls_certificate_key              = mongodb.value.tls_certificate_key
      username                         = mongodb.value.username
      username_template                = mongodb.value.username_template
      verify_connection                = mongodb.value.verify_connection
      write_concern                    = mongodb.value.write_concern
    }
  }

  dynamic "mongodbatlas" {
    for_each = each.value.mongodbatlas != null ? each.value.mongodbatlas : []
    content {
      allowed_roles                    = mongodbatlas.value.allowed_roles
      data                             = mongodbatlas.value.data
      disable_automated_rotation       = mongodbatlas.value.disable_automated_rotation
      name                             = mongodbatlas.value.name
      password_policy                  = mongodbatlas.value.password_policy
      plugin_name                      = mongodbatlas.value.plugin_name
      plugin_version                   = mongodbatlas.value.plugin_version
      private_key                      = mongodbatlas.value.private_key
      project_id                       = mongodbatlas.value.project_id
      public_key                       = mongodbatlas.value.public_key
      root_rotation_statements         = mongodbatlas.value.root_rotation_statements
      rotation_period                  = mongodbatlas.value.rotation_period
      rotation_schedule                = mongodbatlas.value.rotation_schedule
      rotation_window                  = mongodbatlas.value.rotation_window
      skip_static_role_import_rotation = mongodbatlas.value.skip_static_role_import_rotation
      username_template                = mongodbatlas.value.username_template
      verify_connection                = mongodbatlas.value.verify_connection
    }
  }

  dynamic "mssql" {
    for_each = each.value.mssql != null ? each.value.mssql : []
    content {
      allowed_roles                    = mssql.value.allowed_roles
      connection_url                   = mssql.value.connection_url
      contained_db                     = mssql.value.contained_db
      data                             = mssql.value.data
      disable_automated_rotation       = mssql.value.disable_automated_rotation
      disable_escaping                 = mssql.value.disable_escaping
      max_connection_lifetime          = mssql.value.max_connection_lifetime
      max_idle_connections             = mssql.value.max_idle_connections
      max_open_connections             = mssql.value.max_open_connections
      name                             = mssql.value.name
      password                         = mssql.value.password
      password_policy                  = mssql.value.password_policy
      password_wo                      = mssql.value.password_wo
      password_wo_version              = mssql.value.password_wo_version
      plugin_name                      = mssql.value.plugin_name
      plugin_version                   = mssql.value.plugin_version
      root_rotation_statements         = mssql.value.root_rotation_statements
      rotation_period                  = mssql.value.rotation_period
      rotation_schedule                = mssql.value.rotation_schedule
      rotation_window                  = mssql.value.rotation_window
      skip_static_role_import_rotation = mssql.value.skip_static_role_import_rotation
      username                         = mssql.value.username
      username_template                = mssql.value.username_template
      verify_connection                = mssql.value.verify_connection
    }
  }

  dynamic "mysql" {
    for_each = each.value.mysql != null ? each.value.mysql : []
    content {
      allowed_roles                    = mysql.value.allowed_roles
      auth_type                        = mysql.value.auth_type
      connection_url                   = mysql.value.connection_url
      data                             = mysql.value.data
      disable_automated_rotation       = mysql.value.disable_automated_rotation
      max_connection_lifetime          = mysql.value.max_connection_lifetime
      max_idle_connections             = mysql.value.max_idle_connections
      max_open_connections             = mysql.value.max_open_connections
      name                             = mysql.value.name
      password                         = mysql.value.password
      password_policy                  = mysql.value.password_policy
      password_wo                      = mysql.value.password_wo
      password_wo_version              = mysql.value.password_wo_version
      plugin_name                      = mysql.value.plugin_name
      plugin_version                   = mysql.value.plugin_version
      root_rotation_statements         = mysql.value.root_rotation_statements
      rotation_period                  = mysql.value.rotation_period
      rotation_schedule                = mysql.value.rotation_schedule
      rotation_window                  = mysql.value.rotation_window
      service_account_json             = mysql.value.service_account_json
      skip_static_role_import_rotation = mysql.value.skip_static_role_import_rotation
      tls_ca                           = mysql.value.tls_ca
      tls_certificate_key              = mysql.value.tls_certificate_key
      username                         = mysql.value.username
      username_template                = mysql.value.username_template
      verify_connection                = mysql.value.verify_connection
    }
  }

  dynamic "mysql_aurora" {
    for_each = each.value.mysql_aurora != null ? each.value.mysql_aurora : []
    content {
      allowed_roles                    = mysql_aurora.value.allowed_roles
      auth_type                        = mysql_aurora.value.auth_type
      connection_url                   = mysql_aurora.value.connection_url
      data                             = mysql_aurora.value.data
      disable_automated_rotation       = mysql_aurora.value.disable_automated_rotation
      max_connection_lifetime          = mysql_aurora.value.max_connection_lifetime
      max_idle_connections             = mysql_aurora.value.max_idle_connections
      max_open_connections             = mysql_aurora.value.max_open_connections
      name                             = mysql_aurora.value.name
      password                         = mysql_aurora.value.password
      password_policy                  = mysql_aurora.value.password_policy
      password_wo                      = mysql_aurora.value.password_wo
      password_wo_version              = mysql_aurora.value.password_wo_version
      plugin_name                      = mysql_aurora.value.plugin_name
      plugin_version                   = mysql_aurora.value.plugin_version
      root_rotation_statements         = mysql_aurora.value.root_rotation_statements
      rotation_period                  = mysql_aurora.value.rotation_period
      rotation_schedule                = mysql_aurora.value.rotation_schedule
      rotation_window                  = mysql_aurora.value.rotation_window
      service_account_json             = mysql_aurora.value.service_account_json
      skip_static_role_import_rotation = mysql_aurora.value.skip_static_role_import_rotation
      tls_ca                           = mysql_aurora.value.tls_ca
      tls_certificate_key              = mysql_aurora.value.tls_certificate_key
      username                         = mysql_aurora.value.username
      username_template                = mysql_aurora.value.username_template
      verify_connection                = mysql_aurora.value.verify_connection
    }
  }

  dynamic "mysql_legacy" {
    for_each = each.value.mysql_legacy != null ? each.value.mysql_legacy : []
    content {
      allowed_roles                    = mysql_legacy.value.allowed_roles
      auth_type                        = mysql_legacy.value.auth_type
      connection_url                   = mysql_legacy.value.connection_url
      data                             = mysql_legacy.value.data
      disable_automated_rotation       = mysql_legacy.value.disable_automated_rotation
      max_connection_lifetime          = mysql_legacy.value.max_connection_lifetime
      max_idle_connections             = mysql_legacy.value.max_idle_connections
      max_open_connections             = mysql_legacy.value.max_open_connections
      name                             = mysql_legacy.value.name
      password                         = mysql_legacy.value.password
      password_policy                  = mysql_legacy.value.password_policy
      password_wo                      = mysql_legacy.value.password_wo
      password_wo_version              = mysql_legacy.value.password_wo_version
      plugin_name                      = mysql_legacy.value.plugin_name
      plugin_version                   = mysql_legacy.value.plugin_version
      root_rotation_statements         = mysql_legacy.value.root_rotation_statements
      rotation_period                  = mysql_legacy.value.rotation_period
      rotation_schedule                = mysql_legacy.value.rotation_schedule
      rotation_window                  = mysql_legacy.value.rotation_window
      service_account_json             = mysql_legacy.value.service_account_json
      skip_static_role_import_rotation = mysql_legacy.value.skip_static_role_import_rotation
      tls_ca                           = mysql_legacy.value.tls_ca
      tls_certificate_key              = mysql_legacy.value.tls_certificate_key
      username                         = mysql_legacy.value.username
      username_template                = mysql_legacy.value.username_template
      verify_connection                = mysql_legacy.value.verify_connection
    }
  }

  dynamic "mysql_rds" {
    for_each = each.value.mysql_rds != null ? each.value.mysql_rds : []
    content {
      allowed_roles                    = mysql_rds.value.allowed_roles
      auth_type                        = mysql_rds.value.auth_type
      connection_url                   = mysql_rds.value.connection_url
      data                             = mysql_rds.value.data
      disable_automated_rotation       = mysql_rds.value.disable_automated_rotation
      max_connection_lifetime          = mysql_rds.value.max_connection_lifetime
      max_idle_connections             = mysql_rds.value.max_idle_connections
      max_open_connections             = mysql_rds.value.max_open_connections
      name                             = mysql_rds.value.name
      password                         = mysql_rds.value.password
      password_policy                  = mysql_rds.value.password_policy
      password_wo                      = mysql_rds.value.password_wo
      password_wo_version              = mysql_rds.value.password_wo_version
      plugin_name                      = mysql_rds.value.plugin_name
      plugin_version                   = mysql_rds.value.plugin_version
      root_rotation_statements         = mysql_rds.value.root_rotation_statements
      rotation_period                  = mysql_rds.value.rotation_period
      rotation_schedule                = mysql_rds.value.rotation_schedule
      rotation_window                  = mysql_rds.value.rotation_window
      service_account_json             = mysql_rds.value.service_account_json
      skip_static_role_import_rotation = mysql_rds.value.skip_static_role_import_rotation
      tls_ca                           = mysql_rds.value.tls_ca
      tls_certificate_key              = mysql_rds.value.tls_certificate_key
      username                         = mysql_rds.value.username
      username_template                = mysql_rds.value.username_template
      verify_connection                = mysql_rds.value.verify_connection
    }
  }

  dynamic "oracle" {
    for_each = each.value.oracle != null ? each.value.oracle : []
    content {
      allowed_roles                    = oracle.value.allowed_roles
      connection_url                   = oracle.value.connection_url
      data                             = oracle.value.data
      disable_automated_rotation       = oracle.value.disable_automated_rotation
      disconnect_sessions              = oracle.value.disconnect_sessions
      max_connection_lifetime          = oracle.value.max_connection_lifetime
      max_idle_connections             = oracle.value.max_idle_connections
      max_open_connections             = oracle.value.max_open_connections
      name                             = oracle.value.name
      password                         = oracle.value.password
      password_policy                  = oracle.value.password_policy
      password_wo                      = oracle.value.password_wo
      password_wo_version              = oracle.value.password_wo_version
      plugin_name                      = oracle.value.plugin_name
      plugin_version                   = oracle.value.plugin_version
      root_rotation_statements         = oracle.value.root_rotation_statements
      rotation_period                  = oracle.value.rotation_period
      rotation_schedule                = oracle.value.rotation_schedule
      rotation_window                  = oracle.value.rotation_window
      self_managed                     = oracle.value.self_managed
      skip_static_role_import_rotation = oracle.value.skip_static_role_import_rotation
      split_statements                 = oracle.value.split_statements
      username                         = oracle.value.username
      username_template                = oracle.value.username_template
      verify_connection                = oracle.value.verify_connection
    }
  }

  dynamic "postgresql" {
    for_each = each.value.postgresql != null ? each.value.postgresql : []
    content {
      allowed_roles                    = postgresql.value.allowed_roles
      auth_type                        = postgresql.value.auth_type
      connection_url                   = postgresql.value.connection_url
      data                             = postgresql.value.data
      disable_automated_rotation       = postgresql.value.disable_automated_rotation
      disable_escaping                 = postgresql.value.disable_escaping
      max_connection_lifetime          = postgresql.value.max_connection_lifetime
      max_idle_connections             = postgresql.value.max_idle_connections
      max_open_connections             = postgresql.value.max_open_connections
      name                             = postgresql.value.name
      password                         = postgresql.value.password
      password_authentication          = postgresql.value.password_authentication
      password_policy                  = postgresql.value.password_policy
      password_wo                      = postgresql.value.password_wo
      password_wo_version              = postgresql.value.password_wo_version
      plugin_name                      = postgresql.value.plugin_name
      plugin_version                   = postgresql.value.plugin_version
      private_key                      = postgresql.value.private_key
      root_rotation_statements         = postgresql.value.root_rotation_statements
      rotation_period                  = postgresql.value.rotation_period
      rotation_schedule                = postgresql.value.rotation_schedule
      rotation_window                  = postgresql.value.rotation_window
      self_managed                     = postgresql.value.self_managed
      service_account_json             = postgresql.value.service_account_json
      skip_static_role_import_rotation = postgresql.value.skip_static_role_import_rotation
      tls_ca                           = postgresql.value.tls_ca
      tls_certificate                  = postgresql.value.tls_certificate
      username                         = postgresql.value.username
      username_template                = postgresql.value.username_template
      verify_connection                = postgresql.value.verify_connection
    }
  }

  dynamic "redis" {
    for_each = each.value.redis != null ? each.value.redis : []
    content {
      allowed_roles                    = redis.value.allowed_roles
      ca_cert                          = redis.value.ca_cert
      data                             = redis.value.data
      disable_automated_rotation       = redis.value.disable_automated_rotation
      host                             = redis.value.host
      insecure_tls                     = redis.value.insecure_tls
      name                             = redis.value.name
      password                         = redis.value.password
      password_policy                  = redis.value.password_policy
      plugin_name                      = redis.value.plugin_name
      plugin_version                   = redis.value.plugin_version
      port                             = redis.value.port
      root_rotation_statements         = redis.value.root_rotation_statements
      rotation_period                  = redis.value.rotation_period
      rotation_schedule                = redis.value.rotation_schedule
      rotation_window                  = redis.value.rotation_window
      skip_static_role_import_rotation = redis.value.skip_static_role_import_rotation
      tls                              = redis.value.tls
      username                         = redis.value.username
      verify_connection                = redis.value.verify_connection
    }
  }

  dynamic "redis_elasticache" {
    for_each = each.value.redis_elasticache != null ? each.value.redis_elasticache : []
    content {
      allowed_roles                    = redis_elasticache.value.allowed_roles
      data                             = redis_elasticache.value.data
      disable_automated_rotation       = redis_elasticache.value.disable_automated_rotation
      name                             = redis_elasticache.value.name
      password                         = redis_elasticache.value.password
      password_policy                  = redis_elasticache.value.password_policy
      plugin_name                      = redis_elasticache.value.plugin_name
      plugin_version                   = redis_elasticache.value.plugin_version
      region                           = redis_elasticache.value.region
      root_rotation_statements         = redis_elasticache.value.root_rotation_statements
      rotation_period                  = redis_elasticache.value.rotation_period
      rotation_schedule                = redis_elasticache.value.rotation_schedule
      rotation_window                  = redis_elasticache.value.rotation_window
      skip_static_role_import_rotation = redis_elasticache.value.skip_static_role_import_rotation
      url                              = redis_elasticache.value.url
      username                         = redis_elasticache.value.username
      verify_connection                = redis_elasticache.value.verify_connection
    }
  }

  dynamic "redshift" {
    for_each = each.value.redshift != null ? each.value.redshift : []
    content {
      allowed_roles                    = redshift.value.allowed_roles
      connection_url                   = redshift.value.connection_url
      data                             = redshift.value.data
      disable_automated_rotation       = redshift.value.disable_automated_rotation
      disable_escaping                 = redshift.value.disable_escaping
      max_connection_lifetime          = redshift.value.max_connection_lifetime
      max_idle_connections             = redshift.value.max_idle_connections
      max_open_connections             = redshift.value.max_open_connections
      name                             = redshift.value.name
      password                         = redshift.value.password
      password_policy                  = redshift.value.password_policy
      password_wo                      = redshift.value.password_wo
      password_wo_version              = redshift.value.password_wo_version
      plugin_name                      = redshift.value.plugin_name
      plugin_version                   = redshift.value.plugin_version
      root_rotation_statements         = redshift.value.root_rotation_statements
      rotation_period                  = redshift.value.rotation_period
      rotation_schedule                = redshift.value.rotation_schedule
      rotation_window                  = redshift.value.rotation_window
      skip_static_role_import_rotation = redshift.value.skip_static_role_import_rotation
      username                         = redshift.value.username
      username_template                = redshift.value.username_template
      verify_connection                = redshift.value.verify_connection
    }
  }

  dynamic "snowflake" {
    for_each = each.value.snowflake != null ? each.value.snowflake : []
    content {
      allowed_roles                    = snowflake.value.allowed_roles
      connection_url                   = snowflake.value.connection_url
      data                             = snowflake.value.data
      disable_automated_rotation       = snowflake.value.disable_automated_rotation
      max_connection_lifetime          = snowflake.value.max_connection_lifetime
      max_idle_connections             = snowflake.value.max_idle_connections
      max_open_connections             = snowflake.value.max_open_connections
      name                             = snowflake.value.name
      password                         = snowflake.value.password
      password_policy                  = snowflake.value.password_policy
      password_wo                      = snowflake.value.password_wo
      password_wo_version              = snowflake.value.password_wo_version
      plugin_name                      = snowflake.value.plugin_name
      plugin_version                   = snowflake.value.plugin_version
      private_key_wo                   = snowflake.value.private_key_wo
      private_key_wo_version           = snowflake.value.private_key_wo_version
      root_rotation_statements         = snowflake.value.root_rotation_statements
      rotation_period                  = snowflake.value.rotation_period
      rotation_schedule                = snowflake.value.rotation_schedule
      rotation_window                  = snowflake.value.rotation_window
      skip_static_role_import_rotation = snowflake.value.skip_static_role_import_rotation
      username                         = snowflake.value.username
      username_template                = snowflake.value.username_template
      verify_connection                = snowflake.value.verify_connection
    }
  }
}

