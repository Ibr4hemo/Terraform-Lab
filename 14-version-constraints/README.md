# Lab 14: Version Constraints

## Goal
Pin which versions of Terraform and of each provider a configuration may use.

## What the config does
- `required_version`: Terraform CLI must be 1.3.0 or newer.
- `local` provider: any 2.x version except 2.4.0.
- `random` provider: `~> 3.5`, which means `>= 3.5, < 4.0`.

## Constraint operators
| Constraint | Meaning |
|------------|---------|
| `"1.2.2"` / `"= 1.2.2"` | exactly this version |
| `"!= 2.4.0"` | anything except this version |
| `"> 1.2.0"`, `">= "`, `"< "`, `"<= "` | comparisons |
| `"> 1.2.0, < 2.0.0, != 1.4.0"` | combined with commas, all must be true |
| `"~> 1.2"` | `>= 1.2, < 2.0` (only the rightmost number may increase) |
| `"~> 1.2.0"` | `>= 1.2.0, < 1.3.0` |

## Commands
```bash
terraform init                 # picks the newest version that satisfies the constraints
terraform providers            # shows the constraints per provider
terraform version              # shows the installed provider versions
terraform init -upgrade        # upgrade within the constraints (updates .terraform.lock.hcl)
```

## Takeaways
- Without a `version` constraint, `init` always downloads the latest provider, which can break your config.
- The lock file records the exact version chosen. Commit it so everyone gets the same version.
