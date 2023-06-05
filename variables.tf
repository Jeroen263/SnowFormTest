variable "snowflake_account" {
  type        = string
  default     = "WG61147.eu-west-3.aws"
}
variable "snowflake_user" {
  type        = string
  default     = "tf-snow"
}
variable "snowflake_region" {
  type = string
  default = "eu-west-3.aws"
}
variable "snowflake_private_key_path" {
  type = string
  default = "~/.ssh/snowflake_tf_snow_key.p8"
}