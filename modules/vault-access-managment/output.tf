output "vault-token" {
  sensitive = true
  value     = "Token: '${vault_token.token.client_token}' with '${jsonencode(var.policy.capabilities)}' capabilities for '${var.policy.path}' path"
}
