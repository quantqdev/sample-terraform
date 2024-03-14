Docs: https://developer.hashicorp.com/terraform/tutorials/modules/organize-configuration

Commands:
```bash
tf workspace new dev
tf workspace select dev
tf apply -var-file=dev.tfvars
tf destroy -var-file=dev.tfvars  

tf workspace new prod
tf workspace select prod
tf apply -var-file=prod.tfvars
tf destroy -var-file=prod.tfvars  
```