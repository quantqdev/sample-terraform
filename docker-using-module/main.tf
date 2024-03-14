provider "docker" {
  host = "unix:///Users/quanta/.colima/default/docker.sock"
}

module "docker_nginx" {
  source = "../modules/docker-nginx"
}
