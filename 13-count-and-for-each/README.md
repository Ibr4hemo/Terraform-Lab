# Lab 13: Count and for_each

## Goal
Create multiple instances of a resource from a single block.

## What the config does
- `local_file.pet` uses **count** to create one file per entry in `var.filename`.
- `local_file.user` uses **for_each** over `toset(var.users)`. The duplicate `user10` is dropped, so 3 files are created, not 4.

## count vs for_each
| | `count` | `for_each` |
|--|---------|------------|
| Input | a number (`length(list)`) | a **set** or **map** |
| Address | `local_file.pet[0]` | `local_file.user["user10"]` |
| Inside the block | `count.index` | `each.key` / `each.value` |
| Remove the middle element | every later index shifts, so those resources are **replaced** | only that one resource is destroyed |

## Commands
```bash
terraform init
terraform apply
terraform state list            # see the [0] / ["key"] addresses
terraform output
```
Try removing `"dogs.txt"` from the list and running `plan`. With `count`, `cats.txt` gets replaced because it moves from index 2 to index 1.

## Takeaways
- `for_each` doesn't accept a list directly. Convert it with `toset()`, or use a map.
- Prefer `for_each` when items can be added or removed from the middle.
- The `content` default is a fake lab value, not a real secret.
