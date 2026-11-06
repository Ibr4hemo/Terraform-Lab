resource "local_file" "pet" {
  filename = "${path.module}/out/${var.filename}"
  content  = var.file_content["statement2"]
}

resource "random_pet" "my_pet" {
  prefix    = var.prefix[1]
  separator = var.separator
  length    = var.length
}

output "bella_food" {
  value = var.bella.food
}

output "kitty_age" {
  value = var.kitty[1]
}
