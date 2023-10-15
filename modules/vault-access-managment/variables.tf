// https://developer.hashicorp.com/vault/docs/concepts/policies
variable "policy" {
  type = object({
    capabilities = list(string),
    path         = string
  })
}