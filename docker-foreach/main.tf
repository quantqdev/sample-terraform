provider "docker" {
  host = "unix:///Users/quanta/.colima/default/docker.sock"
}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id

  for_each = var.containers

  name = each.value.name
  ports {
    internal = 80
    external = each.value.port
  }
}
