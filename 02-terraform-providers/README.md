# Lab 02: Terraform Providers

## Goal
Understand what providers are, where they come from, and what `terraform init` does.

## What the config does
Declares the `hashicorp/local` provider explicitly and creates `out/things-to-do.txt`.

## Key points
- **Providers** are plugins that let Terraform talk to a platform (AWS, Azure, GCP, local files, etc.).
- `terraform init` reads the config, downloads the needed providers into the hidden `.terraform/` folder, and writes `.terraform.lock.hcl` to pin the exact versions.
- `init` is safe to run any number of times.
- Provider source address format: `[hostname/]namespace/type`
  - `hashicorp/local` → `registry.terraform.io/hashicorp/local` (the hostname defaults to the public registry).
- Registry provider tiers:
  - **Official**: owned and maintained by HashiCorp (aws, azurerm, google, local).
  - **Partner**: maintained by a technology company that is a HashiCorp partner.
  - **Community**: published by individual contributors.

## Commands
```bash
terraform init
terraform providers     # list the providers this config needs
terraform apply
```

## Takeaways
- Without a `required_providers` block, Terraform infers `hashicorp/<type>` from the resource name prefix (e.g. `local_file` → `hashicorp/local`).
- Commit `.terraform.lock.hcl` and git-ignore `.terraform/`.
