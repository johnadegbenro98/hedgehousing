# PowerShell one-click starter for HedgeHousing
Write-Host "Starting HedgeHousing (PowerShell) — ensure Node.js (>=16) is installed."
$root = Split-Path -Parent $MyInvocation.MyCommand.Definition

Start-Process -FilePath "powershell" -ArgumentList "-NoExit","-Command","cd `"$root\backend`"; npm install; npm run dev"
Start-Process -FilePath "powershell" -ArgumentList "-NoExit","-Command","cd `"$root\frontend`"; npm install; npm run dev"
Write-Host "Two PowerShell windows launched for backend and frontend."
