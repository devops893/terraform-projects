resource "vault_token_auth_backend_role" "role" {
  role_name              = "role-${random_string.name.result}"
  allowed_policies       = ["policy-${random_string.name.result}"]
  orphan                 = true
  token_period           = "86400"
  renewable              = false
  token_explicit_max_ttl = "115200"
  depends_on             = [vault_policy.policy]
}