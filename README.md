
# Documentação: Passo a Passo para Criar e Apagar Recursos na Azure com Terraform

## Pré-requisitos
- Conta na Azure
- Chave SSH pública em `~/.ssh/id_rsa.pub`

### Instalação do Azure CLI
Baixe e instale o Azure CLI:
https://docs.microsoft.com/pt-br/cli/azure/install-azure-cli

No Windows, execute no PowerShell:
```
winget install Microsoft.AzureCLI
```

### Instalação do Terraform
No VS Code, instale a extensão "HashiCorp Terraform" para facilitar a edição dos arquivos.

Para instalar o Terraform no Windows:
```
winget install HashiCorp.Terraform
```
Ou baixe manualmente em: https://www.terraform.io/downloads.html

## 1. Login na Azure
Execute o comando abaixo para autenticar:
```
az login
```

## 2. Inicializar o Terraform
Abra o terminal na pasta do projeto e execute:
```
terraform init
```

## 3. Revisar e Personalizar Variáveis
Edite o arquivo `variables.tf` para alterar os nomes dos recursos, se necessário.

## 4. Validar o Plano de Execução
Veja o que será criado:
```
terraform plan
```

## 5. Aplicar o Plano (Criar Recursos)
Execute:
```
terraform apply
```
Confirme digitando `yes` quando solicitado.

## 6. Acessar a VM
Após a criação, obtenha o IP público da VM no portal Azure ou usando:
```
terraform output
```
Conecte via SSH:
```
ssh azureuser@<IP_PUBLICO>
```

## 7. Apagar Todos os Recursos
Para destruir tudo que foi criado:
```
terraform destroy
```
Confirme digitando `yes` quando solicitado.

---

Qualquer dúvida, consulte a documentação oficial do Terraform: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
