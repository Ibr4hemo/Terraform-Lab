terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "things_to_do" {
  filename = "${path.module}/out/things-to-do.txt"
  content  = <<-EOT
    Clean my room before Christmas
    Complete the CKA Certification
  EOT
}
