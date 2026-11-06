variable "filename" {
  description = "Name of the file to create"
  type        = string
  default     = "pets.txt"
}

variable "content" {
  type    = string
  default = "We love pets!"
}

variable "prefix" {
  type    = list(string)
  default = ["Mr", "Mrs", "Sir"]
}

variable "separator" {
  type    = string
  default = "."
}

variable "length" {
  type    = number
  default = 1
}

variable "file_content" {
  type = map(string)
  default = {
    statement1 = "We love pets!"
    statement2 = "We love animals!"
  }
}

variable "bella" {
  type = object({
    name         = string
    color        = string
    age          = number
    food         = list(string)
    favorite_pet = bool
  })
  default = {
    name         = "bella"
    color        = "brown"
    age          = 7
    food         = ["fish", "chicken", "turkey"]
    favorite_pet = true
  }
}

variable "kitty" {
  type    = tuple([string, number, bool])
  default = ["cat", 7, true]
}

variable "fruits" {
  type    = set(string)
  default = ["apple", "banana", "mango"]
}
