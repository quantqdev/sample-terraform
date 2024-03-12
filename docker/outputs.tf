output "container_id" {
  description = "Docker container ID"
  value       = docker_container.nginx.id
}

output "container_name" {
  value = local.container_name
}

output "image_id" {
  description = "Docker image ID"
  value       = docker_image.nginx.id
}
