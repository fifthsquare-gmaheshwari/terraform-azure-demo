# Terraform Demos

## Overview
Terraform helps manage the application deploy on infrastructure(IoC) without manual configuration patching or using portal.



## Install the terraform in windows
- Manually download the terraform install in local 
- unzip and add its location to path
- test in cmd for ```terraform --help```



## Setup local variable in powershell
make sure to login to azure cli before running any terraform command
```
az login
```


### use terraform without login
create the Azure service principle for terraform to
```
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"
```
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret#creating-a-service-principal-using-the-azure-cli

check the app registration - https://entra.microsoft.com/#home

## terraform helpfull commands
```bash
terraform init
terraform fmt
terraform validate
terraform plan
# creates/update the changes in main.ts
terraform apply
terraform destroy
```


# passing variable to change the default value
```bash
terraform apply -var "resource_group_name=myNewResourceGroupName"
```

## get output values set in terraform
```bash
terraform output resource_group_id
```