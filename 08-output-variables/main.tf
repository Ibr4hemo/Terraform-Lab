resource "random_pet" "cat" {
  length    = 2
  separator = "-"
}

resource "local_file" "welcome" {
  filename = "${path.module}/out/message.txt"
  content  = "Welcome to Kodekloud."
}
