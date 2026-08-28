@echo off
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -File "create_shortcuts.ps1"
pause
