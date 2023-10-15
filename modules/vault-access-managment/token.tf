resource "vault_token" "token" {
  role_name = "role-${random_string.name.result}"

  policies = ["policy-${random_string.name.result}"]

  renewable = false

  renew_min_lease = 43200
  renew_increment = 86400

  depends_on = [
    vault_token_auth_backend_role.role,
    vault_policy.policy
  ]
}