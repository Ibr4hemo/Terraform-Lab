# Terraform Lab

My hands-on labs from KodeKloud's **Terraform for the Absolute Beginner with Hands-on Labs** (Coursera Labs).
Each folder is one lab with its `.tf` files.

All labs use providers that run locally (`local`, `random`, `tls`, `time`), so no cloud account is needed.
The lab VMs wrote files under `/root/...`; here every lab writes into an `out/` folder inside the lab directory (git-ignored), so it runs on Windows, macOS and Linux.

## Labs

| # | Lab | Topics |
|---|-----|--------|
| 01 | [HCL Basics](01-hcl-basics) | block syntax, init / plan / apply / destroy |
| 02 | [Terraform Providers](02-terraform-providers) | provider plugins, registry, `terraform init` |
| 03 | [Multiple Providers](03-multiple-providers) | `local` + `random` in one config |
| 04 | [Terraform Variables](04-terraform-variables) | variable types: string, list, map, set, object, tuple |
| 05 | [Using Variables in Terraform](05-using-variables) | `-var`, `TF_VAR_`, `.tfvars`, precedence |
| 06 | [Resource Attributes](06-resource-attributes) | referencing attributes, interpolation |
| 07 | [Resource Dependencies](07-resource-dependencies) | implicit vs `depends_on` |
| 08 | [Output Variables](08-output-variables) | `output` blocks, `terraform output` |
| 09 | [Terraform State](09-terraform-state) | `terraform.tfstate`, `state list/show` |
| 10 | [Terraform Commands](10-terraform-commands) | validate, fmt, show, providers, graph, refresh-only |
| 11 | [Lifecycle Rules](11-lifecycle-rules) | create_before_destroy, prevent_destroy, ignore_changes |
| 12 | [Datasources](12-datasources) | `data` blocks |
| 13 | [Count and for_each](13-count-and-for-each) | multiple instances, `count.index`, `each.value` |
| 14 | [Version Constraints](14-version-constraints) | `required_providers`, `~>`, `!=` |

## Running a lab

Requires [Terraform](https://developer.hashicorp.com/terraform/install) 1.3+.

```bash
cd 01-hcl-basics
terraform init
terraform plan
terraform apply
terraform destroy
```
