# count: one resource per list element, addressed by index
resource "local_file" "pet" {
  count    = length(var.filename)
  filename = "${path.module}/out/${var.filename[count.index]}"
  content  = "We love pets!"
}

# for_each: one resource per set/map element, addressed by key
resource "local_file" "user" {
  for_each = toset(var.users)
  filename = "${path.module}/out/${each.value}"
  content  = var.content
}

output "pets" {
  value = local_file.pet[*].filename
}

output "users" {
  value = { for k, f in local_file.user : k => f.filename }
}
