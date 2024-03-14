provider "docker" {
  host = "unix:///Users/quanta/.colima/default/docker.sock"
}

module "docker_nginx_new" {
  source = "../modules/docker-nginx"
}

moved {
  from = module.docker_nginx
  to   = module.docker_nginx_new
}
