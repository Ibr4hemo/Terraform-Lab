resource "time_static" "time_update" {}

resource "local_file" "time" {
  filename = "${path.module}/out/time.txt"
  content  = "Time stamp of this file is ${time_static.time_update.id}"
}

resource "random_pet" "my_pet" {
  prefix    = "Mr"
  separator = "."
  length    = 1
}

resource "local_file" "pet" {
  filename = "${path.module}/out/pets.txt"
  content  = "My favorite pet is ${random_pet.my_pet.id}"
}
