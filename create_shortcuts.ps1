# create_shortcuts.ps1
# 在桌面建立「翻譯上稿工具」與「上傳翻譯到網站」兩個捷徑

$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$desktop = [Environment]::GetFolderPath("Desktop")
$ws = New-Object -ComObject WScript.Shell

# 捷徑 1：上傳到 GitHub
$lnk1 = Join-Path $desktop "① 上傳翻譯到網站.lnk"
$sc1 = $ws.CreateShortcut($lnk1)
$sc1.TargetPath = Join-Path $root "上傳到GitHub.bat"
$sc1.WorkingDirectory = $root
$sc1.IconLocation = "shell32.dll,138"
$sc1.Description = "雙擊上傳翻譯文件到網站"
$sc1.Save()

# 捷徑 2：翻譯上稿工具
$lnk2 = Join-Path $desktop "① 翻譯上稿工具.lnk"
$sc2 = $ws.CreateShortcut($lnk2)
$sc2.TargetPath = Join-Path $root "translate-editor.html"
$sc2.WorkingDirectory = $root
$sc2.IconLocation = "shell32.dll,220"
$sc2.Description = "雙擊開啟翻譯上稿表單"
$sc2.Save()

Write-Host "桌面捷徑已建立完成！"
Write-Host " - $lnk1"
Write-Host " - $lnk2"
