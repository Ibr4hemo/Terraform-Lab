# Lab 03: Multiple Providers

## Goal
Use more than one provider in the same configuration.

## What the config does
- `local_file.pet` comes from the **local** provider.
- `random_pet.my_pet` comes from the **random** provider and generates a name like `Mrs.hen`.
- `random_string.iac_random` generates a 10-character string with at least 5 uppercase letters.

## Commands
```bash
terraform init      # downloads both hashicorp/local and hashicorp/random
terraform plan
terraform apply
terraform show
```

## Takeaways
- `init` installs every provider used anywhere in the config.
- `random_*` resources are *logical* resources: they only exist in Terraform state, and their values stay the same until the resource is replaced.
- The generated value is shown in the apply output (`id = "Mrs.hen"`) and in `terraform show`.
