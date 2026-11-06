resource "local_file" "games" {
  filename = "${path.module}/out/favorite-games"
  content  = "FIFA 21"
}

resource "local_file" "pet" {
  filename        = "${path.module}/out/pets.txt"
  content         = "We love pets!"
  file_permission = "0700"
}
