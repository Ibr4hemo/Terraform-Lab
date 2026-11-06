# Lab 09: Terraform State

## Goal
Understand what `terraform.tfstate` is, when it is created, and how to inspect it.

## What the config does
A `random_pet` plus a `local_file` that writes the pet name, so there is something in state to look at.

## Key points
- The state file `terraform.tfstate` is created by the **first `apply`**, not by `init` or `plan`.
- It maps every resource in the config to the real object, including all attributes (IDs, generated values, etc.).
- `plan` and `apply` refresh state and compare it with the config to decide what to change.
- Real-world teams keep state in a **remote backend** (S3, Terraform Cloud, ...) with locking, because:
  - it can contain **secrets** in plain text
  - everyone on the team must use the same, latest state

## Commands
```bash
terraform init
terraform apply
terraform show                          # human-readable state
terraform state list                    # all resource addresses
terraform state show random_pet.super_pet
terraform apply -var "length=3"         # the change is detected by comparing with state
```

## Takeaways
- Never edit `terraform.tfstate` by hand. Use the `terraform state` subcommands.
- Never commit state to Git. This repo's `.gitignore` excludes `*.tfstate` and `*.tfstate.*`.
- `terraform apply -refresh=false` skips the refresh step and trusts the cached state.
