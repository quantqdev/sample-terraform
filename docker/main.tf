terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host = "unix:///Users/quanta/.colima/default/docker.sock"
}

locals {
  container_name = "${var.container_name}-${var.env}"
}

resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = local.container_name

  ports {
    internal = 80
    external = var.container_port
  }
}
