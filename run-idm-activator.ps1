# Tentukan URL dan nama file
$url = "https://github.com/DeBotz-bot/Activated-IDM/releases/download/IDM-Activator-Script/Activated-IDM.zip"
$zipFile = "$env:TEMP\Activated-IDM.zip"
$extractDir = "$env:TEMP\Activated-IDM"

# Unduh file ZIP
Write-Host "Mengunduh file..."
Invoke-WebRequest -Uri $url -OutFile $zipFile

# Ekstrak ZIP
Write-Host "Mengekstrak file..."
Expand-Archive -Path $zipFile -DestinationPath $extractDir -Force

# Jalankan IASL.cmd di jendela Command Prompt baru (agar terlihat prosesnya)
Write-Host "Menjalankan IASL.cmd..."
Start-Process cmd -ArgumentList "/c", "`"$extractDir\IASL.cmd`" & pause"

# Opsional: Hapus file sementara setelah selesai (hapus baris di bawah jika tidak ingin otomatis hapus)
# Remove-Item $zipFile
# Remove-Item $extractDir -Recurse -Force