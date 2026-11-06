variable "jedi" {
  type = map(string)
  default = {
    filename = "first-jedi"
    content  = "phanius"
  }
}

# No defaults: values come from terraform.tfvars (or -var / TF_VAR_*)
variable "filename" {
  type = string
}

variable "content" {
  type = string
}
