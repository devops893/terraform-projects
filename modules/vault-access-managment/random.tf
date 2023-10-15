resource "random_string" "name" {
  length  = 16
  lower   = true
  special = false
  numeric = false
  upper   = false
}