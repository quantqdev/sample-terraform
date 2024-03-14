Docs: https://developer.hashicorp.com/terraform/tutorials/modules/move-config

Scenario:
```bash
# first, module name in main.tf: docker_nginx, `moved` does not exist
tf apply
# update module name in main.tf: docker_nginx_new, add `moved`
tf apply
# after applying, module name in terraform.tfstate is updated accordingly, but not changes in applied resources
```