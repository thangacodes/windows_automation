Write-Host "Script to open URL's on Chrome Browser" -ForegroundColor Red -BackgroundColor Black
$website = Get-Content C:\Users\tmuru\Videos\url.txt
$website
Start-Sleep 1
Write-Host "The URL list is below show us" -ForegroundColor Red -BackgroundColor Green
$page = @($website)

foreach($web in $page){
    Start-Process $web
}
