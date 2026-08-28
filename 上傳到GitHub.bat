@echo off
cd /d "%~dp0"

git config --global user.name >nul 2>nul
if errorlevel 1 (
    git config --global user.name "dvorak0727"
    git config --global user.email "dvorak0727@gmail.com"
)

powershell -NoProfile -ExecutionPolicy Bypass -File "build_index.ps1"
git add -A
git commit -m "update translations"
git push
pause
