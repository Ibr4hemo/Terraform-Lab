# Lab 06: Resource Attributes

## Goal
Use the output (attribute) of one resource as the input of another.

## What the config does
- `time_static.time_update` records a timestamp once, when it is created.
- `local_file.time` writes that timestamp into `out/time.txt`.
- `random_pet.my_pet` generates a name, and `local_file.pet` writes it into `out/pets.txt`.

## Reference syntax
```hcl
<resource_type>.<resource_name>.<attribute>
time_static.time_update.id
random_pet.my_pet.id
```
Inside a string, use interpolation: `"My favorite pet is ${random_pet.my_pet.id}"`.

## Commands
```bash
terraform init
terraform apply
terraform show      # lists every attribute each resource exported
```

## Takeaways
- Each provider's docs list the **attributes** a resource exports, such as `id`, `rfc3339` and `unix` for `time_static`.
- Referencing an attribute also creates an implicit dependency (see Lab 07).
