variable "filename" {
  type    = list(string)
  default = ["pets.txt", "dogs.txt", "cats.txt"]
}

variable "users" {
  type    = list(string)
  default = ["user10", "user11", "user12", "user10"]
}

variable "content" {
  type    = string
  default = "password: S3cr3tP@ssw0rd"
}
