terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.11.1"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.2"
    }
  }
}

provider "docker" {
  host = "unix:///Users/quanta/.colima/default/docker.sock"
}
provider "time" {}
provider "http" {}

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

resource "time_sleep" "wait_container_running" {
  depends_on      = [docker_container.nginx]
  create_duration = "2s"
}

check "response" {
  data "http" "nginx" {
    url        = "http://localhost:${var.container_port}"
    insecure   = true
    depends_on = [time_sleep.wait_container_running]
  }

  assert {
    condition     = data.http.nginx.status_code == 200
    error_message = "Nginx response is ${data.http.nginx.status_code}"

  }
}
