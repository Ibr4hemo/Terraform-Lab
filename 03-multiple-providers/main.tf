resource "local_file" "pet" {
  filename = "${path.module}/out/pets.txt"
  content  = "We love pets!"
}

resource "random_pet" "my_pet" {
  prefix    = "Mrs"
  separator = "."
  length    = 1
}

resource "random_string" "iac_random" {
  length    = 10
  min_upper = 5
}
