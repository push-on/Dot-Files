$apps = @(
  "BlenderFoundation.Blender",
  "KDE.Krita",
  "Microsoft.VisualStudioCode",
  "SumatraPDF.SumatraPDF",
  "7zip.7zip",
  "Python.Python.3.12",
  "OpenJS.NodeJS.LTS",
  "golang.go",
  "Audacity.Audacity",
  "TGRMNSoftware.BulkRenameUtility",
  "Obsidian.Obsidian",
  "OBSProject.OBSStudio",
  "DuongDieuPhap.ImageGlass",
  "Cyanfish.NAPS2",
  "XnSoft.XnConvert",
  "xanderfrangos.twinkletray",
  "Microsoft.PowerShell",
  "Git.Git",
  "Cloudflare.Warp",
  "Notion.Notion",
  "Starship.Starship",
  "Discord.Discord", 
  "CodecGuide.K-LiteCodecPack.Mega",
  "qBittorrent.qBittorrent",
  "Microsoft.PowerToys"
)

function Test-IsAdmin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if (Test-IsAdmin) {    
    Write-Host "List of apps to be installed:"
    $i = 1
    foreach ($app in $apps) {
        Write-Host "$i. $app"
        $i++
    }

    Write-Host "Press Enter to continue or 'x' to cancel."

    $key = Read-Host -Key
    if ($key -eq "x") {
        Write-Host "Install process cancelled."
        exit
    }

    try {
        foreach ($app in $apps) {
            Write-Host "`n$app `n"
            winget install --id=$app -e -h
        }
    } catch {
        Write-Error "Err: $($_.Exception.Message)"
    } finally {
        Write-Host "All apps installed successfully!"

        Write-Host "Do you want to disable Windows widgets before continuing? `n(Enter to disable, 'x' to continue without disabling)"
        $key = Read-Host -Key
        if ($key -eq "Enter") {
            Write-Host "Disabling Windows widgets..."
            winget uninstall "windows web experience pack"
        }

        Write-Host "Do you want to restart your computer now? `n(Enter to restart, 'x' to continue without restarting)"
        $key = Read-Host -Key

        if ($key -eq "Enter") {
            Restart-Computer -Force
            powercfg.exe /hibernate off
        }
    }
} else {
    Write-Warning "Needs admin privileges. Restarting with admin privileges..."
    
    $scriptPath = $MyInvocation.MyCommand.Path
    Start-Process PowerShell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File $scriptPath" -Verb RunAs
}
