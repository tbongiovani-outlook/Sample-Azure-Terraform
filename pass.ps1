$TF_ADMIN_PASSWORD = [System.Convert]::ToBase64String((1..16 | ForEach-Object {Get-Random -Maximum 256}) -as [byte[]])
"admin_password=`"$TF_ADMIN_PASSWORD`"" | Out-File -Encoding utf8 terraform.auto.tfvars
Write-Host "Senha gerada: $TF_ADMIN_PASSWORD"