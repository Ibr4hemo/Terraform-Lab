# Lab 12: Data Sources

## Goal
Read information from something Terraform does **not** manage, and use it in the configuration.

## What the config does
- `data.local_file.os` reads the `os-release` file. The lab VM read `/etc/os-release`, and this repo ships a sample copy so it runs on Windows too.
- `local_file.os_copy` writes that content into a new file.
- `output.os_version` prints it.

## Resource vs data source
| `resource` | `data` |
|------------|--------|
| Creates, updates and destroys infrastructure | **Only reads** existing infrastructure |
| Managed resource | Data resource |
| Address: `local_file.x` | Address: `data.local_file.x` |

## Commands
```bash
terraform init
terraform apply
terraform output os_version
```

## Takeaways
- Data sources are read during `plan`/`apply`, and their arguments are lookup filters (here, `filename`).
- Use them to look up things created by hand, by other teams, or by another Terraform config, such as an existing VPC, AMI or DNS zone.
