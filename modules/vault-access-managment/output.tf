output "vault-token" {
  sensitive = true
  value = {
    path         = var.policy.path,
    capabilities = var.policy.capabilities,
    token        = vault_token.token.client_token,
  }
}