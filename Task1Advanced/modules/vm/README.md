

Запуск на dev
```bash
terraform apply -var-file="../../envs/dev/.tfvars" 
```

Запуск на stage
```bash
terraform plan -var-file="../../envs/stage/.tfvars" 
```

Запуск на prod
```bash
terraform plan -var-file="../../envs/prod/.tfvars" 
```
