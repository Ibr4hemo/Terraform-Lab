# Lab 05: Using Variables in Terraform

## Goal
Learn every way to pass values into variables, and which one wins.

## Files
- `variables.tf`: `jedi` (a map with defaults), plus `filename` and `content` with **no defaults**.
- `terraform.tfvars`: supplies `filename` and `content` automatically.
- `main.tf`: two `local_file` resources that use them.

## Ways to set a variable
```bash
# 1. Interactive prompt (if there is no default and no other value)
terraform apply

# 2. Command-line flag
terraform apply -var "filename=pets.txt" -var "content=We love pets!"

# 3. Environment variable
export TF_VAR_filename="pets.txt"           # PowerShell: $env:TF_VAR_filename="pets.txt"

# 4. Variable definition files
#    terraform.tfvars, terraform.tfvars.json and *.auto.tfvars are loaded automatically.
#    Any other file name needs the flag:
terraform apply -var-file="variables.tfvars"
```

## Precedence (lowest → highest)
1. Environment variables (`TF_VAR_name`)
2. `terraform.tfvars`
3. `*.auto.tfvars` (in alphabetical order)
4. `-var` and `-var-file` flags, highest priority, so the last one on the command line wins

## Takeaways
- Map values are read with `var.jedi["filename"]`.
- If the same variable is set in several places, the highest-precedence source wins.
