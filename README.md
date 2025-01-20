


# How to build
```
cd networking
terraform plan -var-file="environment/prod/terraform.tfvars" -out networking.plan
terraform apply networking.plan
```