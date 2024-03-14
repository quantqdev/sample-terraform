output "container_id" {
  value = docker_container.nginx.id
}

output "image_id" {
  value = docker_image.nginx.id
}
