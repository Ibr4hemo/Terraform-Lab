resource "local_file" "jedi" {
  filename = "${path.module}/out/${var.jedi["filename"]}"
  content  = var.jedi["content"]
}

resource "local_file" "pet" {
  filename = "${path.module}/out/${var.filename}"
  content  = var.content
}
