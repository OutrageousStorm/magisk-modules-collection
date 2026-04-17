# Installing Magisk Modules

## Prerequisites

- Magisk installed (see [android-rom-guide](https://github.com/OutrageousStorm/android-rom-guide))
- **Zygisk enabled** (Settings → Zygisk → ON) — required for many modern modules
- Device rebooted after Magisk install

---

## Method 1: Via Magisk Manager (easiest)

```
Magisk app → Modules → [Search icon]
Search for: "PlayIntegrityFix" (or module name)
Tap result → Install → Reboot
```

---

## Method 2: From GitHub (if not in Magisk repo)

```bash
# Download the module zip from GitHub
wget https://github.com/<author>/<module>/releases/download/v1.0/module.zip

# Install via Magisk Manager
# Magisk → Modules → ⬆️  (install from zip) → select module.zip

# Or via ADB sideload
adb shell su -c "pm install <module.zip>"  # (doesn't work, use manager UI)
```

---

## Method 3: Update from Storage

```
Settings → Magisk → Modules → ⬆️  Install from storage
Navigate to downloaded .zip → Install → Reboot
```

---

## Configure Module Scope (Zygisk modules)

After install:
1. Open Magisk Manager
2. Tap the module
3. Tap scope to see which apps it affects
4. Add/remove apps as needed

**Example: Hide My AppList**
- Scope it only to apps that check for other installed apps
- Narrower scope = less performance impact

---

## Troubleshooting

### Module not showing up
- Reboot device
- Check: `/data/adb/modules/` exists and is readable
- Reinstall module fresh

### Module causing crashes
1. Reboot to recovery
2. In Magisk: disable all modules
3. Reboot system
4. Re-enable one by one to identify culprit

### Module scope shows no apps
- Module might not support scoping
- Or it's a system-wide module (affects all apps automatically)

### "Waiting for unzip" spinner forever
- Download is corrupted
- Try downloading module again from different source
- Check disk space: `adb shell df -h /data`

---

## Essential modules to install

Start with these:
1. **PlayIntegrityFix** — pass banking/payment app checks
2. **LSPosed** — framework for Xposed modules (prerequisite for many)
3. **Hide My AppList** — prevent app detection

Then add based on your use case:
- Gaming: **Universal GMS Doze** (huge battery improvement)
- Privacy: **Shamiko** + **TrickyStore**
- Customization: **Iconify**

---

## Module Module directory structure

If creating/modifying a module locally:

```
module-name/
├── module.prop       (metadata: name, version, author)
├── install.sh        (runs during install)
├── system/
│   ├── app/          (system apps to add/replace)
│   ├── framework/    (system framework patches)
│   └── ...
├── post-fs-data.sh   (runs after filesystem mounted)
└── service.sh        (runs after all modules load)
```

---

See: [Magisk Documentation](https://topjohnwu.github.io/Magisk/guides.html)
