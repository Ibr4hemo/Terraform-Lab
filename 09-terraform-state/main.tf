resource "random_pet" "super_pet" {
  length    = var.length
  separator = "-"
}

resource "local_file" "pet" {
  filename = "${path.module}/out/pets.txt"
  content  = "My super pet is ${random_pet.super_pet.id}"
}

variable "length" {
  type    = number
  default = 2
}
