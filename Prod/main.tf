resource "snowflake_database" "db" {
	name     = "DB_PROD"
}

resource "snowflake_warehouse" "warehouse" {
	name           = "WH_PROD"
	warehouse_size = "SMALL"
	auto_suspend = 60
}

resource "snowflake_schema" "schema" {
	name = "SCHEMA_REPORTING"
	database = "DB_PROD"
}

resource "snowflake_role" "role" {
	name = "REPORTING_ROLE"
}

resource "snowflake_role_grants" "grants" {
	role_name = "REPORTING_ROLE"
	users = var.snowflake_user
}

resource "snowflake_warehouse_grant" "grant_wh" {
	warehouse_name = "WH_PROD"
	privilege      = "USAGE"
	roles = ["REPORTING_ROLE"]
}

resource "snowflake_database_grant" "grant_db" {
	database_name = "DB_PROD"
	privilege      = "ALL PRIVILEGES"
	roles = ["REPORTING_ROLE"]
}

resource "snowflake_schema_grant" "grant_schema" {
  database_name = "DB_PROD"
  schema_name   = "SCHEMA_REPORTING"

  privilege = "ALL PRIVILEGES"
  roles     = ["REPORTING_ROLE"]
}



