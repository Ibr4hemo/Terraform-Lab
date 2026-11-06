# Lab 04: Terraform Variables

## Goal
Replace hard-coded values with input variables, and learn the variable types.

## Files
- `variables.tf`: every variable with its `type`, `default` and `description`.
- `main.tf`: resources that read the variables through `var.<name>`.

## Variable types
| Type | Example |
|------|---------|
| `string` | `"We love pets!"` |
| `number` | `1` |
| `bool` | `true` |
| `list(string)` | `["Mr", "Mrs", "Sir"]`, read with `var.prefix[0]` |
| `map(string)` | `{ statement1 = "..." }`, read with `var.file_content["statement1"]` |
| `set(string)` | like a list but **no duplicates** are allowed |
| `object({...})` | named attributes of mixed types, read with `var.bella.food` |
| `tuple([...])` | fixed-length list of mixed types, read with `var.kitty[1]` |

## Commands
```bash
terraform init
terraform plan
terraform apply
terraform output
```

## Takeaways
- A `type` constraint makes Terraform reject wrong values at plan time.
- `default` is optional. With no default, Terraform asks for the value interactively (see Lab 05).
- Lists are zero-indexed.
