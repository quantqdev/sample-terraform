data "terraform_remote_state" "container_name" {
  backend = "local"
  config = {
    path = "../docker/terraform.tfstate"
  }
}
