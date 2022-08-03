function rename_folder {
   process{
   write-host "Going to rename the custom forlder in "C" drive" -ForegroundColor Red -BackgroundColor Black
   start-sleep -Seconds 2
   Write-Host "starting the actual work" -ForegroundColor Red -BackgroundColor Black
   Rename-Item C:\Technical\Victor C:\Technical\Victor_123
   Get-ChildItem -Path C:\Technical
   Start-Sleep -Seconds 4
   Rename-Item C:\Technical\Victor_123 C:\Technical\Victor
   Get-ChildItem -Path C:\Technical
   Start-Sleep -Seconds 5
   }
}
rename_folder
