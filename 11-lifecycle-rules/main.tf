resource "local_file" "file" {
  filename        = "${path.module}/out/${var.filename}"
  file_permission = var.permission
  content         = random_string.string.id
}

resource "random_string" "string" {
  length = var.length

  keepers = {
    length = var.length
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "local_file" "notes" {
  filename = "${path.module}/out/notes.txt"
  content  = "Edit me outside Terraform - changes to content are ignored"

  lifecycle {
    ignore_changes = [content]
    # prevent_destroy = true   # uncomment: plan/destroy will fail for this resource
  }
}
