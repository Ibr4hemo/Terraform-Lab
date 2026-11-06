terraform {
  required_version = ">= 1.3.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "> 2.0.0, < 3.0.0, != 2.4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
}

resource "local_file" "pet" {
  filename = "${path.module}/out/pets.txt"
  content  = "We love pets!"
}

resource "random_pet" "my_pet" {
  length = 1
}
