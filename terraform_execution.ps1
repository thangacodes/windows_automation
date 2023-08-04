$tfi="terraform init"
$tft="terraform fmt"
$tfv="terraform validate"
$tfa="terraform apply --auto-approve"
$tfd="terraform destroy --auto-approve"
Write-Host -f Black -b Red "Cross checking Variables that we setup at the intial"
$tfi
$tft
$tfv
$tfa
$tfd

$input = Read-Host -Prompt "Enter terraform shortcut command"
write-host -f Black -b Red "You've entered input is:" $input

if($input -eq "tfi"){
write-host "$tfi in progress.." -ForegroundColor Red -b Black
}
elseif($input -eq "tft"){
Write-Host "$tft in progress.."
}
elseif($input -eq "tfv"){
Write-Host "$tfv in progress.."
}
elseif($input -eq "tfa"){
Write-Host "$tfa in progress.."
}
else {
Write-Host "$tfd in progress.."
}
