# Lab 08: Output Variables

## Goal
Print values from resources after `apply`, and read them later.

## Files
- `main.tf`: a `random_pet` and a `local_file`.
- `outputs.tf`: `pet_name` and `welcome_message` outputs.

## Commands
```bash
terraform init
terraform apply                    # outputs are printed at the end
terraform output                   # all outputs
terraform output pet_name          # one output
terraform output -raw pet_name     # without quotes, handy in scripts
terraform output -json
```

## Takeaways
- Output syntax: `output "<name>" { value = <expression> }`.
- Outputs are stored in state, so `terraform output` works without re-running apply.
- Use them to show useful info quickly or pass values to other tools and scripts. Mark secrets with `sensitive = true`.
