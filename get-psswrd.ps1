Set-ExecutionPolicy -Scope CurrentUser -Force Unrestricted

$NomeCru=$(netsh wlan show profile | Select-String "rios:")
$NomeCru=$NomeCru -split ":"
$NomeCru=$NomeCru[1] -split " "

$ssid=$NomeCru[1]
$SenhaCru=$(netsh wlan show profile name=$ssid key=clear | Select-String "Chave")
$SenhaCru=$SenhaCru[1] -split ":"
$Senha=$SenhaCru[1]

echo $NomeCru
echo "Nome da rede: $ssid
senha da rede: $Senha" | Out-File "$ssid -$Senha.txt"

Set-ExecutionPolicy -Scope CurrentUser -Force Undefined