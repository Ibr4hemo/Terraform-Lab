resource "local_file" "pet" {
  filename        = "${path.module}/out/pets.txt"
  content         = "We love pets!"
  file_permission = "0777"
}

resource "random_pet" "my_pet" {
  prefix = "Mr"
  length = 1
}

output "pet_name" {
  value = random_pet.my_pet.id
}
