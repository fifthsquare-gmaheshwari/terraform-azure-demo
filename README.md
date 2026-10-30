# Terraform Demos

## Overview
Terraform helps manage the application deploy on infrastructure(IoC) without manual configuration patching or using portal.



## Install the terraform in windows
- Manually download the terraform install in local 
- unzip and add its location to path
- test in cmd for ```terraform --help```

## create the Azure service principle for terraform
```
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"
```
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret#creating-a-service-principal-using-the-azure-cli

check the app registration - https://entra.microsoft.com/#home


## Setup local variable in powershell
```bash
$Env:ARM_CLIENT_ID = "<APPID_VALUE>"
$Env:ARM_CLIENT_SECRET = "<PASSWORD_VALUE>"
$Env:ARM_SUBSCRIPTION_ID = "<SUBSCRIPTION_ID>"
$Env:ARM_TENANT_ID = "<TENANT_VALUE>"
```

