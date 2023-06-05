terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.66.1"
    }
  }
}

provider "snowflake" {
  role  = "SYSADMIN"
  account = var.snowflake_account
  username = var.snowflake_user
  private_key_path = var.snowflake_private_key_path
}