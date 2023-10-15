resource "vault_policy" "policy" {
  name = "policy-${random_string.name.result}"

  policy = <<EOT
path "${var.policy.path}" {
  capabilities = ${jsonencode(var.policy.capabilities)}
}
EOT
}