


# How to build
```shell
# Export variables 
#export AWS_ACCESS_KEY_ID=""
#export AWS_SECRET_ACCESS_KEY=""
#export AWS_SESSION_TOKEN=""
source .env

cd networking
terraform plan -var-file="environment/prod/terraform.tfvars" -out networking.plan
terraform apply networking.plan

cd ..

cd vanilla
terraform plan -var-file="environment/prod/terraform.tfvars" -out eks.plan
terraform apply eks.plan
```