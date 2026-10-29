<#
.SYNOPSIS
    WinPEOCs-Offline zip parçalarını GitHub Release olarak yükler.
.DESCRIPTION
    Zip dosyalarının bulunduğu klasörde çalıştırın. Önce her zip'in SHA-256 özetini denetler, sonra
    mustafagundogmus/WinPEOCs-Offline deposunda offline-tr-tr-2026-10-29 sürümünü (yoksa) oluşturur ve eksik dosyaları yükler.
    Yarıda kalırsa yeniden çalıştırın; aynı boyutta yüklenmiş dosyalar atlanır.
    GitHub CLI gerekir: winget install --id GitHub.cli   ardından: gh auth login
.EXAMPLE
    powershell.exe -ExecutionPolicy Bypass -File .\release-yukle.ps1 -Folder "$env:USERPROFILE\Downloads"
#>
param(
    [string]$Folder = (Get-Location).Path,
    [string]$Repo = 'mustafagundogmus/WinPEOCs-Offline',
    [string]$Tag = 'offline-tr-tr-2026-10-29',
    [switch]$SkipHash
)

$files = [ordered]@{
    'WinPEOCs-Offline-tr-tr-00-Arayuz-v2.zip' = '84d53c2baaaa35338f05dc5b3b49be3a1dbfbc04079ac03be967edc6879c2270'
    'WinPEOCs-Offline-tr-tr-01-LP-W11.zip' = 'd8dbd0239919985f180b4beabb8035d1e5feebb66b32b4702d17c085061a3365'
    'WinPEOCs-Offline-tr-tr-02-LP-W10-1903-22H2.zip' = 'd5b367073f1548c98788b4d1d87e83c01dc4ddd921b96797fb31a1e70c2cd6da'
    'WinPEOCs-Offline-tr-tr-03-LP-W10-1709-1809.zip' = '8fd70193234f10f8f9ee0e932786dd408dab456b4d910805486e69b984166419'
    'WinPEOCs-Offline-tr-tr-04-LP-Server-2022-2025.zip' = '5bedde467428405586040af3401c719029e968f6ad1b8aa3c163edf958e223b5'
    'WinPEOCs-Offline-tr-tr-05-LP-Server-1709-20H2.zip' = '1f2fb278d12e58f771004763d6c305cfa790a980d36e7878fdce3fda44dc9b2d'
    'WinPEOCs-Offline-tr-tr-06-WinPE-W11-24H2-26H2-amd64.zip' = '31699749894afdbf9ca1bbec851ba14423ffb5aa2c689585d6c6deb0890d1539'
    'WinPEOCs-Offline-tr-tr-07-WinPE-W11-24H2-26H2-arm64.zip' = 'ab2507cb25c267b38d0f178532799dc1f006ad905c14e6944efd92098498d640'
    'WinPEOCs-Offline-tr-tr-08-WinPE-W11-26H1-amd64.zip' = '0eb40ff34d344aa0f5b1d4a1ffaad75afbf9c0d21cfec3afc2e0c6e2a13b3a15'
    'WinPEOCs-Offline-tr-tr-09-WinPE-W11-26H1-arm64.zip' = '6e397810c292c8bd02bafbb15a57a34155b5c5270233612d12d7309017893caf'
    'WinPEOCs-Offline-tr-tr-10-WinPE-W11-23H2-amd64.zip' = 'faee07d1510338b1153de61c17fc96855a578b7fe9c18d06b2ea44db541590ca'
    'WinPEOCs-Offline-tr-tr-11-WinPE-W11-23H2-arm64.zip' = '0e3b7bebed9f0b3a5b5e4782bcb20d9e7572a680824e12d5acb392957ce49ab8'
    'WinPEOCs-Offline-tr-tr-12-WinPE-W11-22H2-amd64.zip' = '3bfbbd7572cd52c4edc501b9e6472b7124978c145347942e6027b0610c99faa5'
    'WinPEOCs-Offline-tr-tr-13-WinPE-W11-22H2-arm64.zip' = 'f45ea3f099e30e5594586965bbb28440777702f90625ed3b183711a34d5dfb81'
    'WinPEOCs-Offline-tr-tr-14-WinPE-W11-21H2-amd64.zip' = '9d5b7a1f70efd94f45935c48f688c2075b2f13208ea763ee529948eadbf4093e'
    'WinPEOCs-Offline-tr-tr-15-WinPE-W11-21H2-arm64.zip' = '3a28e2c0fc0361bfeb024828981113bce4978139dfaed1820ef5c357ba7fc0fa'
    'WinPEOCs-Offline-tr-tr-16-WinPE-W11-21H2-x86.zip' = 'c99132b2f45914082b3be2c08327320e6e5a60394f6d96d0a3a6eddb4a899c22'
    'WinPEOCs-Offline-tr-tr-17-WinPE-W10-2004-22H2-amd64.zip' = 'a17f8f91aa2d04c938644105bc40b4da169a6eab1fb00aa90f055283316e2b35'
    'WinPEOCs-Offline-tr-tr-18-WinPE-W10-2004-22H2-x86.zip' = '17fa1e1c39c0eb5f2ea058422b7475af2e989ccd66d4414cb295bebf3ec09a11'
    'WinPEOCs-Offline-tr-tr-19-WinPE-W10-1903-1909-amd64.zip' = 'c9de06f6b4164e79eddcbd2d0f9a452482b785161cae9667b6e389ca699dbee3'
    'WinPEOCs-Offline-tr-tr-20-WinPE-W10-1903-1909-x86.zip' = 'abc4d2473c9337913f14a0761dc211a21082eb1fddf434961b748d3077fa8eac'
    'WinPEOCs-Offline-tr-tr-21-WinPE-W10-1809-amd64.zip' = 'a6f3a5cb7363dc402cc7f569f624debe5f6887aa5d8551648daab409511026dc'
    'WinPEOCs-Offline-tr-tr-22-WinPE-W10-1809-x86.zip' = 'e28f53a5bb82617318854e144abaa06e550ed4524def07814a281f4cde11cc3a'
    'WinPEOCs-Offline-tr-tr-23-WinPE-W10-1709-amd64.zip' = '7047fe631538c1ad816eb7782ce81ba382348389c089b06c75440ea8c5fc93e3'
    'WinPEOCs-Offline-tr-tr-24-WinPE-W10-1709-x86.zip' = 'fc2258952b3b12159ebf8d56643c42c98dd4179f3a77de0e1b865d6222984ee2'
    'WinPEOCs-Offline-tr-tr-25-WinPE-W10-1607-amd64.zip' = '5ee951992cae43298397244ed15496a1bee92b348f34d5c7dec742be86c6963a'
    'WinPEOCs-Offline-tr-tr-26-WinPE-W10-1607-x86.zip' = '7265eede30ee681e73e8acb5a4cf9002efb779af91b010e306dc918c98a49a5f'
    'WinPEOCs-Offline-tr-tr-27-WinPE-W10-2004-22H2-arm64.zip' = '0cbcd7184e2484cfe2c8f6d08609300863f9241523d9341225b27f2031d7c27c'
    'WinPEOCs-Offline-tr-tr-28-WinPE-W10-1903-1909-arm64.zip' = '8e93d45118994a7bcaa3426c73a06e59226cd43dabf0ee832dfc445b9bd17644'
    'WinPEOCs-Offline-tr-tr-29-WinPE-W10-1809-arm64.zip' = '41040d02cc9a5bf11f67ae2fcf472350eb2065a9b4b073e7d8eaa6ab593a0bcf'
    'WinPEOCs-Offline-tr-tr-30-WinPE-W10-1709-arm64.zip' = 'c13af70286ae68a60dbc7382ac51a653f010df7097d9e7ba108d43fce17954fa'
}

$title = 'WinPE OCs Offline (tr-tr) · 2026-10-29'
$notes = @'
WinPE OCs çevrimdışı depo · **tr-tr** · tüm sürümler (Windows 11, Windows 10, Windows Server) · x64/amd64, x86, arm64

| Parça | İçerik |
|---|---|
| **00-Arayuz-v2** | Arayüz (`WinPEOCs-Offline.ps1`), depo dizini, BENIOKU ve SHA-256 listesi; **her zaman gerekli** |
| 01–05 | Dil paketleri, dil özellikleri ve FOD |
| 06–30 | Windows PE isteğe bağlı bileşenleri (neutral + tr-tr), sürüm ve mimari başına |

Zip'leri aynı klasöre çıkarıp `WinPEOCs-Offline.ps1` dosyasını çalıştırın; internet gerekmez. Ayrıntılar zip içindeki `BENIOKU.txt` dosyasında.

Tümünü indirme: `gh release download offline-tr-tr-2026-10-29 -R mustafagundogmus/WinPEOCs-Offline`

Paketler Microsoft'a aittir (Windows Update CDN ve Windows ADK WinPE eklentisi, 2026-10-29) ve Microsoft lisans koşullarına tabidir.
'@

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    Write-Host 'GitHub CLI bulunamadı. Kurulum: winget install --id GitHub.cli' -ForegroundColor Red
    exit 1
}
gh auth status 2>$null | Out-Null
if ($LASTEXITCODE -ne 0) {
    gh auth login
    if ($LASTEXITCODE -ne 0) { exit 1 }
}

# 1. Dosyalar ve SHA-256
$missing = @()
$bad = @()
$i = 0
foreach ($name in $files.Keys) {
    $i++
    $path = Join-Path $Folder $name
    if (-not (Test-Path -LiteralPath $path)) { $missing += $name; continue }
    if (-not $SkipHash) {
        Write-Progress -Activity 'SHA-256 denetimi' -Status $name -PercentComplete (100 * $i / $files.Count)
        $h = (Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant()
        if ($h -ne $files[$name]) { $bad += $name }
    }
}
Write-Progress -Activity 'SHA-256 denetimi' -Completed
if ($bad.Count -gt 0) {
    Write-Host 'SHA-256 uyuşmayan dosyalar (yeniden indirin):' -ForegroundColor Red
    $bad | ForEach-Object { Write-Host "  $_" }
    exit 1
}
if ($missing.Count -eq $files.Count) {
    Write-Host "Bu klasörde zip dosyası yok: $Folder" -ForegroundColor Red
    exit 1
}
if ($missing.Count -gt 0) {
    Write-Host "Klasörde olmayan dosyalar ($($missing.Count)):" -ForegroundColor Yellow
    $missing | ForEach-Object { Write-Host "  $_" }
    $answer = Read-Host 'Mevcut dosyalar yüklensin mi? (E/H)'
    if ($answer -notmatch '^[EeYy]') { exit 1 }
}

# 2. Release (yoksa oluştur)
gh release view $Tag -R $Repo 2>$null | Out-Null
if ($LASTEXITCODE -ne 0) {
    $notesFile = Join-Path ([System.IO.Path]::GetTempPath()) 'winpeocs-offline-notes.md'
    [System.IO.File]::WriteAllText($notesFile, $notes, (New-Object System.Text.UTF8Encoding($false)))
    gh release create $Tag -R $Repo --title $title --notes-file $notesFile
    if ($LASTEXITCODE -ne 0) {
        Write-Host 'Release oluşturulamadı.' -ForegroundColor Red
        exit 1
    }
}

# 3. Eksik dosyaları yükle
$existing = @{}
foreach ($line in @(gh release view $Tag -R $Repo --json assets --jq '.assets[] | .name + "|" + (.size | tostring)')) {
    $p = ([string]$line).Split('|')
    if ($p.Count -eq 2) { $existing[$p[0]] = [long]$p[1] }
}
$n = 0
$failed = @()
foreach ($name in $files.Keys) {
    $path = Join-Path $Folder $name
    if (-not (Test-Path -LiteralPath $path)) { continue }
    $n++
    $size = (Get-Item -LiteralPath $path).Length
    if ($existing.ContainsKey($name) -and $existing[$name] -eq $size) {
        Write-Host "[$n] zaten yüklü: $name"
        continue
    }
    Write-Host ("[$n] yükleniyor: $name ({0:N0} MB)" -f ($size / 1MB)) -ForegroundColor Cyan
    $ok = $false
    for ($try = 1; $try -le 3 -and -not $ok; $try++) {
        gh release upload $Tag $path -R $Repo --clobber
        if ($LASTEXITCODE -eq 0) { $ok = $true } else { Write-Host "    yeniden deneniyor ($try/3)" -ForegroundColor Yellow; Start-Sleep -Seconds 10 }
    }
    if (-not $ok) { $failed += $name }
}
if ($failed.Count -gt 0) {
    Write-Host 'Yüklenemeyen dosyalar (betiği yeniden çalıştırın):' -ForegroundColor Red
    $failed | ForEach-Object { Write-Host "  $_" }
    exit 1
}
Write-Host "Tamamlandı: https://github.com/$Repo/releases/tag/$Tag" -ForegroundColor Green
