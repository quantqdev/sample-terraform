variable "containers" {
  type = map(object({
    name = string
    port = number
  }))
  default = {
    nginx-1 : {
      name = "nginx-1",
      port = 8081
    },
    nginx-2 : {
      name = "nginx-2",
      port = 8082
  } }
}
