@echo off
start /b "GameBar.exe" "C:\Program Files\WindowsApps\Microsoft.XboxGamingOverlay_7.124.5142.0_x64__8wekyb3d8bbwe\GameBar.exe"
timeout /t 1
nircmd win min process "GameBar.exe"
@echo off
start /b "CrosshairX.exe" "C:\Program Files (x86)\Steam\steamapps\common\CrosshairX\CrosshairX.exe"
timeout /t 8
taskkill /f /im CrosshairX.exe