###########################################################
# Script: Checking datatype in Powershell                 #
# Author: Thangadurai,Murugan                             #
###########################################################

Write-Host -f Red -b Black "Script executed at:" $date

$date= Get-Date

Write-Host -f Cyan -b DarkRed "Powershell script to finding out given variables datatypes"

function datatypes(){
   process{

$test = '1','2','3'
Write-Host "Checking variable $test datatype"
$test.GetType()

 $phone = 12345679 
 Write-Host "Checking variable $phone datatype"    
 $phone.GetType().Name 

$curDate = Get-Date 
Write-Host "Checking variable $curDate datatype"
$curDate.GetType()

$mahi = $true
Write-Host "Checking variable $mahi datatype"
$mahi.Gettype()
$nahi = $false
Write-Host "Checking variable $nahi datatype"
$nahi.Gettype()
}
}
datatypes
