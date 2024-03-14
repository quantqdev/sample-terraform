provider "docker" {
  host = "unix:///Users/quanta/.colima/default/docker.sock"
}

module "docker_nginx" {
  source         = "../modules/docker-nginx"
  container_name = var.container_name
  container_port = var.container_port
}
