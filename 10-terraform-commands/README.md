# Lab 10: Terraform Commands

## Goal
Get comfortable with the everyday Terraform CLI commands beyond init/plan/apply.

## Commands
| Command | What it does |
|---------|--------------|
| `terraform validate` | Checks the syntax and argument names. Errors point to the exact file and line, e.g. an unsupported argument. |
| `terraform fmt` | Rewrites `.tf` files in canonical style (alignment, indentation). Prints the files it changed. |
| `terraform show` | Shows the current state. Add `-json` for machine-readable output. |
| `terraform providers` | Lists the providers the config requires. |
| `terraform providers mirror <dir>` | Copies the provider plugins into another directory, for offline use. |
| `terraform output [name]` | Prints output values from state. |
| `terraform apply -refresh-only` | Syncs state with real-world objects without changing infrastructure (replaces the old `terraform refresh`). |
| `terraform graph` | Prints the dependency graph in DOT format. View it with Graphviz: `terraform graph \| dot -Tsvg > graph.svg`. |

## Try it
```bash
terraform init
terraform validate
terraform fmt
terraform apply
terraform output pet_name
terraform show
terraform providers
terraform graph
```

## Takeaways
- Run `fmt` and `validate` before every commit, since they're cheap and catch most mistakes.
- If someone changes a file outside Terraform, `apply -refresh-only` shows the drift and updates state.
