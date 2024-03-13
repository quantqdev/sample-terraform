variable "env" {
  type    = string
  default = "dev"
}

variable "container_name" {
  type    = string
  default = "ExampleContainerName"
}

variable "container_port" {
  type    = number
  default = 8080
}

variable "container_qty" {
  type    = number
  default = 2
}
