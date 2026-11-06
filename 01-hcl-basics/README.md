# Lab 01: HCL Basics

## Goal
Learn the HashiCorp Configuration Language (HCL) block syntax and the core Terraform workflow.

## What the config does
- `local_file.games` creates `out/favorite-games` with the content `FIFA 21`.
- `local_file.pet` creates `out/pets.txt` with `0700` permissions.

## Anatomy of a resource block
```hcl
resource "local_file" "games" {   # <block type> "<provider>_<resource type>" "<resource name>"
  filename = "..."                # arguments (key = value)
  content  = "FIFA 21"
}
```
- `local` = provider, `file` = resource type, `games` = the name used inside Terraform.
- Resource address: `local_file.games`.

## Commands
```bash
terraform init      # download the provider plugin(s)
terraform plan      # preview: "+" create, "-" destroy, "~" update, "-/+" replace
terraform apply     # create the resources (type "yes")
terraform show      # inspect what was created
terraform destroy   # delete everything in this config
```

## Takeaways
- Every `.tf` file in a folder is loaded together as one configuration.
- Changing an argument such as `content` or `file_permission` on `local_file` forces a **replace** (`-/+`), because the resource cannot be updated in place.
- `terraform destroy` removes everything in the configuration. To remove one resource, delete its block and run `apply`.
