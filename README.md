# WinPEOCs-Offline

WinPE OCs çevrimdışı depo · **tr-tr** · tüm sürümler (Windows 11, Windows 10, Windows Server) · x64/amd64, x86, arm64.

Paketler [offline-tr-tr-2026-10-29](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/tag/offline-tr-tr-2026-10-29) sürümünde 31 zip parçası olarak durur (toplam 9.09 GB).
Doğrudan indirme adresleri: [indirme-baglantilari.txt](indirme-baglantilari.txt) (her satırda bir adres; indirme yöneticilerine metin dosyasından aktarılabilir).

## Kullanım

1. **00** parçası her zaman gerekli; diğerlerinden yalnızca ihtiyacınız olanları indirin.
2. Zip'lerin hepsini aynı klasöre çıkarın. Hepsi `WinPEOCs-Offline-tr-tr` klasöründe birleşir.
   (Windows Gezgini'nin "Tümünü ayıkla" komutu her zip'i ayrı bir klasöre açar; klasörler yan yana durduğu sürece arayüz onları da bulur.)
3. `WinPEOCs-Offline.ps1` dosyasına sağ tıklayıp **PowerShell ile çalıştır**'ı seçin ya da:
   `powershell.exe -ExecutionPolicy Bypass -File .\WinPEOCs-Offline.ps1`
4. Sürüm ve mimariyi seçip **Listele**'ye, paketleri işaretleyip **Kopyala**'ya basın. Dosyalar çevrimiçi sürümle aynı düzende
   (`Langs`, `OnDemand\<mimari>`, `WinPE\<derleme>\<mimari>\WinPE_OCs`) kopyalanır ve SHA-1 ile doğrulanır.

Tümünü tek komutla indirmek için: `gh release download offline-tr-tr-2026-10-29 -R mustafagundogmus/WinPEOCs-Offline`

## Parçalar

| No | Dosya | Boyut | İçerik |
|---|---|---|---|
| 00 | [WinPEOCs-Offline-tr-tr-00-Arayuz-v2.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-00-Arayuz-v2.zip) | 0 MB | Arayüz, depo dizini ve BENIOKU |
| 01 | [WinPEOCs-Offline-tr-tr-01-LP-W11.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-01-LP-W11.zip) | 380 MB | Dil paketleri ve FOD · Windows 11 (tüm sürümler) |
| 02 | [WinPEOCs-Offline-tr-tr-02-LP-W10-1903-22H2.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-02-LP-W10-1903-22H2.zip) | 247 MB | Dil paketleri ve FOD · Windows 10 1903–22H2 |
| 03 | [WinPEOCs-Offline-tr-tr-03-LP-W10-1709-1809.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-03-LP-W10-1709-1809.zip) | 390 MB | Dil paketleri ve FOD · Windows 10 1709–1809 |
| 04 | [WinPEOCs-Offline-tr-tr-04-LP-Server-2022-2025.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-04-LP-Server-2022-2025.zip) | 273 MB | Dil paketleri ve FOD · Windows Server 2022, 23H2, 2025 |
| 05 | [WinPEOCs-Offline-tr-tr-05-LP-Server-1709-20H2.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-05-LP-Server-1709-20H2.zip) | 174 MB | Dil paketleri ve FOD · Windows Server 1709–20H2 |
| 06 | [WinPEOCs-Offline-tr-tr-06-WinPE-W11-24H2-26H2-amd64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-06-WinPE-W11-24H2-26H2-amd64.zip) | 345 MB | Windows PE · W11 26H2, W11 25H2, W11 24H2, Windows Server 2025 (26100) LTSC · amd64 |
| 07 | [WinPEOCs-Offline-tr-tr-07-WinPE-W11-24H2-26H2-arm64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-07-WinPE-W11-24H2-26H2-arm64.zip) | 348 MB | Windows PE · W11 26H2, W11 25H2, W11 24H2, Windows Server 2025 (26100) LTSC · arm64 |
| 08 | [WinPEOCs-Offline-tr-tr-08-WinPE-W11-26H1-amd64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-08-WinPE-W11-26H1-amd64.zip) | 348 MB | Windows PE · W11 26H1 · amd64 |
| 09 | [WinPEOCs-Offline-tr-tr-09-WinPE-W11-26H1-arm64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-09-WinPE-W11-26H1-arm64.zip) | 412 MB | Windows PE · W11 26H1 · arm64 |
| 10 | [WinPEOCs-Offline-tr-tr-10-WinPE-W11-23H2-amd64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-10-WinPE-W11-23H2-amd64.zip) | 343 MB | Windows PE · Windows Server 23H2 (25398) AC, W11 23H2 · amd64 |
| 11 | [WinPEOCs-Offline-tr-tr-11-WinPE-W11-23H2-arm64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-11-WinPE-W11-23H2-arm64.zip) | 344 MB | Windows PE · W11 23H2 · arm64 |
| 12 | [WinPEOCs-Offline-tr-tr-12-WinPE-W11-22H2-amd64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-12-WinPE-W11-22H2-amd64.zip) | 339 MB | Windows PE · W11 22H2 · amd64 |
| 13 | [WinPEOCs-Offline-tr-tr-13-WinPE-W11-22H2-arm64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-13-WinPE-W11-22H2-arm64.zip) | 339 MB | Windows PE · W11 22H2 · arm64 |
| 14 | [WinPEOCs-Offline-tr-tr-14-WinPE-W11-21H2-amd64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-14-WinPE-W11-21H2-amd64.zip) | 330 MB | Windows PE · W11 21H2 · amd64 |
| 15 | [WinPEOCs-Offline-tr-tr-15-WinPE-W11-21H2-arm64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-15-WinPE-W11-21H2-arm64.zip) | 294 MB | Windows PE · W11 21H2 · arm64 |
| 16 | [WinPEOCs-Offline-tr-tr-16-WinPE-W11-21H2-x86.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-16-WinPE-W11-21H2-x86.zip) | 280 MB | Windows PE · W11 21H2 · x86 |
| 17 | [WinPEOCs-Offline-tr-tr-17-WinPE-W10-2004-22H2-amd64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-17-WinPE-W10-2004-22H2-amd64.zip) | 327 MB | Windows PE · Windows Server 2022 (20348) LTSC, Windows Server 20H2 (19042) AC, Windows Server 2004 (19041) AC, W10 2004, 20H2, 21H1, 21H2 & 22H2 · amd64 |
| 18 | [WinPEOCs-Offline-tr-tr-18-WinPE-W10-2004-22H2-x86.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-18-WinPE-W10-2004-22H2-x86.zip) | 279 MB | Windows PE · W10 2004, 20H2, 21H1, 21H2 & 22H2 · x86 |
| 19 | [WinPEOCs-Offline-tr-tr-19-WinPE-W10-1903-1909-amd64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-19-WinPE-W10-1903-1909-amd64.zip) | 359 MB | Windows PE · Windows Server 1909 (18363) AC, Windows Server 1903 (18362) AC, W10 1903 & 1909 · amd64 |
| 20 | [WinPEOCs-Offline-tr-tr-20-WinPE-W10-1903-1909-x86.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-20-WinPE-W10-1903-1909-x86.zip) | 283 MB | Windows PE · W10 1903 & 1909 · x86 |
| 21 | [WinPEOCs-Offline-tr-tr-21-WinPE-W10-1809-amd64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-21-WinPE-W10-1809-amd64.zip) | 357 MB | Windows PE · Windows Server 1809 (17763) LTSC2019, Windows Server 1803 (17134) AC, W10 1809 · amd64 |
| 22 | [WinPEOCs-Offline-tr-tr-22-WinPE-W10-1809-x86.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-22-WinPE-W10-1809-x86.zip) | 283 MB | Windows PE · W10 1809 · x86 |
| 23 | [WinPEOCs-Offline-tr-tr-23-WinPE-W10-1709-amd64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-23-WinPE-W10-1709-amd64.zip) | 355 MB | Windows PE · Windows Server 1709 (16299) AC, W10 1709 · amd64 |
| 24 | [WinPEOCs-Offline-tr-tr-24-WinPE-W10-1709-x86.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-24-WinPE-W10-1709-x86.zip) | 281 MB | Windows PE · W10 1709 · x86 |
| 25 | [WinPEOCs-Offline-tr-tr-25-WinPE-W10-1607-amd64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-25-WinPE-W10-1607-amd64.zip) | 358 MB | Windows PE · Windows Server 2016 (14393) LTSC, W10 1607 · amd64 |
| 26 | [WinPEOCs-Offline-tr-tr-26-WinPE-W10-1607-x86.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-26-WinPE-W10-1607-x86.zip) | 287 MB | Windows PE · W10 1607 · x86 |
| 27 | [WinPEOCs-Offline-tr-tr-27-WinPE-W10-2004-22H2-arm64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-27-WinPE-W10-2004-22H2-arm64.zip) | 183 MB | Windows PE · W10 2004, 20H2, 21H1, 21H2 & 22H2 · arm64 |
| 28 | [WinPEOCs-Offline-tr-tr-28-WinPE-W10-1903-1909-arm64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-28-WinPE-W10-1903-1909-arm64.zip) | 183 MB | Windows PE · W10 1903 & 1909 · arm64 |
| 29 | [WinPEOCs-Offline-tr-tr-29-WinPE-W10-1809-arm64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-29-WinPE-W10-1809-arm64.zip) | 183 MB | Windows PE · W10 1809 · arm64 |
| 30 | [WinPEOCs-Offline-tr-tr-30-WinPE-W10-1709-arm64.zip](https://github.com/mustafagundogmus/WinPEOCs-Offline/releases/download/offline-tr-tr-2026-10-29/WinPEOCs-Offline-tr-tr-30-WinPE-W10-1709-arm64.zip) | 181 MB | Windows PE · W10 1709 · arm64 |

SHA-256 özetleri 00 parçasındaki `PARCALAR-SHA256.txt` dosyasında ve `release-yukle.ps1` içinde.

## Release'i oluşturma

`release-yukle.ps1`, zip dosyalarının bulunduğu klasörde çalıştırıldığında her zip'in SHA-256 özetini denetler, `offline-tr-tr-2026-10-29` sürümünü
(yoksa) oluşturur ve eksik dosyaları yükler. Yarıda kalırsa yeniden çalıştırmanız yeterli; yüklenmiş dosyalar atlanır.
[GitHub CLI](https://cli.github.com) gerekir (`winget install --id GitHub.cli`, ardından `gh auth login`).

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\release-yukle.ps1 -Folder "$env:USERPROFILE\Downloads"
```

## Lisans

MIT lisansı yalnızca bu depodaki betik ve metin dosyaları için geçerlidir. Release'teki paketler Microsoft'a aittir
(Windows Update CDN ve Windows ADK WinPE eklentisi) ve Microsoft lisans koşullarına tabidir.
