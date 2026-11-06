# Lab 11: Lifecycle Rules

## Goal
Change Terraform's default "destroy, then create" behavior using `lifecycle` blocks.

## What the config does
- `random_string.string` has `keepers` tied to `var.length`, so changing the length forces a new string. `create_before_destroy` makes Terraform build the new one **before** removing the old one.
- `local_file.file` writes that string to a file.
- `local_file.notes` uses `ignore_changes = [content]`, so later edits to `content` are ignored.

## Lifecycle arguments
| Argument | Effect |
|----------|--------|
| `create_before_destroy = true` | On replace, create the new resource first, then destroy the old one. |
| `prevent_destroy = true` | Any plan that would destroy this resource fails. This does **not** stop you from deleting the block from the config. |
| `ignore_changes = [attr, ...]` | Ignores drift and config changes on those attributes. `ignore_changes = all` ignores everything. |

## Try it
```bash
terraform init
terraform apply
terraform apply -var "length=8"     # watch the order: create, then destroy
# change content in local_file.notes, then:
terraform plan                      # no changes, because content is ignored
```

## Takeaways
- Be careful with `create_before_destroy` on resources whose name must be unique, like a file at the same path. The new resource may be created and then deleted along with the old one.
- `prevent_destroy` is a safety net for critical resources such as databases.
