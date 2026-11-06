# Lab 07: Resource Dependencies

## Goal
Control the order in which Terraform creates and destroys resources.

## What the config does
- **Implicit dependency:** `local_sensitive_file.key_details` uses `tls_private_key.pvtkey.private_key_pem`, so Terraform creates the key first.
- **Explicit dependency:** `local_file.whale` has `depends_on = [local_file.krill]`, so krill is created first even though whale never references it.

## Commands
```bash
terraform init
terraform apply
terraform destroy   # destroyed in reverse order: whale before krill
terraform graph     # dependency graph in DOT format
```

## Takeaways
- Prefer implicit dependencies (references). Use `depends_on` only when there is a hidden dependency that Terraform cannot see.
- `tls_private_key` stores the key in **state**, so it's fine for labs but not for production secrets.
- `local_sensitive_file` hides the content from plan output. It replaces the old `sensitive_content` argument.
