function find_memory_usage{
   process{
Write-Host "finding memory usage on windows based machines" -ForegroundColor Red -BackgroundColor Black
$ComputeObject = Get-WmiObject -Class win32_operatingsystem
$RAM = (($ComputeObject.TotalVisibleMemorySize - $ComputeObject.FreePhysicalMemory)/1024/1024)
Write-Host "RAM usage in GB:" -ForegroundColor Red -BackgroundColor Black $RAM
}
}
find_memory_usage
