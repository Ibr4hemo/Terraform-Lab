# Implicit dependency: the file reads an attribute of tls_private_key
resource "tls_private_key" "pvtkey" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_sensitive_file" "key_details" {
  filename = "${path.module}/out/key.txt"
  content  = tls_private_key.pvtkey.private_key_pem
}

# Explicit dependency: whale is created only after krill
resource "local_file" "whale" {
  filename   = "${path.module}/out/whale"
  content    = "whale"
  depends_on = [local_file.krill]
}

resource "local_file" "krill" {
  filename = "${path.module}/out/krill"
  content  = "krill"
}
