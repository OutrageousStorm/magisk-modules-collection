# 🧲 Magisk Modules Collection

Curated list of the best Magisk modules — tested, categorized, and kept up to date.

**What is Magisk?** A systemless root solution for Android that modifies the system partition in memory, not on disk. This lets modules survive OTA updates and makes root undetectable by most apps.

---

## Performance

| Module | Description | Link |
|--------|-------------|------|
| **Universal GMS Doze** | Puts Google Play Services into deep doze, massively reduces battery drain | [GitHub](https://github.com/gloeyisk/universal-gms-doze) |
| **Zygisk-Assistant** | Detaches GMS from battery optimization whitelist | Search Magisk repo |
| **Lygisk** | Lightweight Magisk fork with smaller footprint | [GitHub](https://github.com/programminghoch10/Lygisk) |
| **QuickSwitch** | Enables alternative recent apps providers (Lawnchair etc.) | [GitHub](https://github.com/skittles9823/QuickSwitch) |

---

## Privacy & Security

| Module | Description | Link |
|--------|-------------|------|
| **Shamiko** | Hides root from apps using Zygisk (replaces MagiskHide) | [GitHub](https://github.com/LSPosed/LSPosed.github.io/releases) |
| **Universal SafetyNet Fix** | Passes Play Integrity / SafetyNet on rooted devices | [GitHub](https://github.com/kdrag0n/safetynet-fix) |
| **Play Integrity Fix** | Updated SafetyNet bypass for API 33+ | [GitHub](https://github.com/chiteroman/PlayIntegrityFix) |
| **Hide My AppList** | Hides installed app list from detection (via LSPosed) | [GitHub](https://github.com/Dr-TSNG/Hide-My-Applist) |
| **Riru-LocationReporter** | Spoofs GPS location systemwide | Search Magisk repo |

---

## UI & Customization

| Module | Description | Link |
|--------|-------------|------|
| **Font Manager** | Replace system font with any TTF/OTF | [GitHub](https://github.com/Magisk-Modules-Alt-Repo/font-manager) |
| **Iconify** | Full Android UI theming via Magisk + LSPosed | [GitHub](https://github.com/Mahmud0808/Iconify) |
| **Statusbar Speedometer** | Adds real-time network speed to status bar | Search Magisk repo |
| **Volume Steps** | Increases granularity of volume steps (e.g. 25 → 100) | Search Magisk repo |

---

## Battery

| Module | Description | Link |
|--------|-------------|------|
| **AccA / ACC** | Advanced Charging Controller — set charge limits | [GitHub](https://github.com/MatteCarra/AccA) |
| **Thermal Tweaks** | Modifies thermal throttling thresholds | Various device-specific |
| **Dolby Atmos** | Enables Dolby audio processing on non-Dolby devices | Device-specific |

---

## System Mods

| Module | Description | Link |
|--------|-------------|------|
| **MiXplorer** | Best Android file manager — needs no root, but integrates with it | [XDA](https://forum.xda-developers.com/t/app-2-2-mixplorer-v6-x-released-fully-featured-file-manager.1523691/) |
| **Busybox for Android** | Adds Linux utils (grep, awk, sed, etc.) to Android shell | [GitHub](https://github.com/Magisk-Modules-Alt-Repo/busybox-ndk) |
| **bindhosts** | System-wide ad blocking via /etc/hosts | [GitHub](https://github.com/backslashxx/bindhosts) |
| **Hosts File** | Ad blocking via hosts file (classic) | [GitHub](https://github.com/Magisk-Modules-Alt-Repo/hosts) |

---

## LSPosed Modules (requires LSPosed framework)

| Module | Description | Link |
|--------|-------------|------|
| **Hide My AppList** | Prevent apps detecting other installed apps | [GitHub](https://github.com/Dr-TSNG/Hide-My-Applist) |
| **TrickyStore** | Spoof hardware attestation for banking apps | [GitHub](https://github.com/5ec1cff/TrickyStore) |
| **Cemiuiler** | MIUI system tweaks | [GitHub](https://github.com/MiuiItemSettings/Cemiuiler) |
| **CorePatch** | Disables APK signature verification | [GitHub](https://github.com/LSPosed/CorePatch) |

---

## How to install

1. Open **Magisk** app
2. Tap **Modules** → search or install from zip
3. Reboot
4. For LSPosed modules: install LSPosed first, then enable the module in LSPosed → scope it to relevant apps

---

*See also: [android-tweaks-toolkit](https://github.com/OutrageousStorm/android-tweaks-toolkit)*  
*Maintained by [OutrageousStorm](https://github.com/OutrageousStorm)*
