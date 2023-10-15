# To create token with specific policy

## Required providers

- vault
- random

### Example 

```yaml
terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.21.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {}

provider "vault" {}
```

## Change Log

### 1.0.0
- Initial version

#### Documentation

<mark>Variables</mark>

```yaml
capabilities = ["create", "update", "delete", "list", "read"],
path         = "*"
```