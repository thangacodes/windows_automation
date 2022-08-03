function os_type{
   process {
Write-Host "Checking windows OS 32 or 64 bit" -ForegroundColor Green -BackgroundColor Red

if ((Get-WmiObject win32_operatingsystem | select osarchitecture).osarchitecture -like "64*")
{
Write-Host "64-bit OS" -ForegroundColor Red -BackgroundColor Black
}
else
{
Write-Host "32-bit OS" -ForegroundColor Green -BackgroundColor Black
}
}
}
os_type
