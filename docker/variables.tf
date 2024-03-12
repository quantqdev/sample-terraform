variable "container_name" {
  description = "Docker container name"
  type        = string
  default     = "ExampleContainerName"
}

variable "container_port" {
  description = "Docker container port"
  type        = number
  default     = 8080
}
