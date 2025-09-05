# Verifica se o Resource Group existe, importa para o Terraform se necessário e executa o destroy

$subscriptionId = "247f1805-23e4-49df-8359-ce71728346a3"
$resourceGroup = "rg-redhat-vm-001"

# Verifica se o Resource Group existe na Azure
$rgExists = az group exists --name $resourceGroup

if ($rgExists -eq "true") {
    Write-Host "Resource Group encontrado. Importando para o Terraform..."
    terraform import azurerm_resource_group.rg "/subscriptions/$subscriptionId/resourceGroups/$resourceGroup"
} else {
    Write-Host "Resource Group não encontrado. Nenhum import necessário."
}

Write-Host "Executando terraform destroy..."
terraform destroy -auto-approve
