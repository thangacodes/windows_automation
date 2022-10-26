##############################################################################
# Name: Registry Editor file adding and existing value changes               #
# Date: 25/10/2022                                                           #
# Author: Thangadurai.Murugan                                                #
# Note: Open PowerShell RUN as Administrator and then execute this           #
##############################################################################

Write-Host "Script is to Modify registry using PowerShell cmdlet" -f Cyan -BackgroundColor Red

Start-Sleep 3 # Sleep for 3 seconds

Write-Host "Set regedit location" -f Cyan -BackgroundColor Red

Write-Host "Navigating to the registry path first and then does the necessary changes" -ForegroundColor Cyan -BackgroundColor Red

Set-Location -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\"

pwd  # checking the current path after above command executes.

Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\' -Name FeatureSettingsOverrideMask -Value 3

sleep 3

Write-Host "Check now on regedit" -f Cyan -BackgroundColor Red

echo "Opening registry editor"

regedit

Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\' -Name FeatureSettingsOverride -Value 8

regedit

exit 

