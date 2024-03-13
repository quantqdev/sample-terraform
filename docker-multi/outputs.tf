output "containers" {
  value = [
    for container in docker_container.nginx : {
      id : container.id
      name : container.name
      port : container.ports[0].external
    }
  ]
}

output "base_container_name" {
  value = local.base_container_name
}

output "image_id" {
  value = docker_image.nginx.id
}
