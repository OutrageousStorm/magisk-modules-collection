# Creating a Custom Magisk Module

Use the included template to create your own Magisk module.

## Structure

```
my_module/
├── module.prop          (metadata)
├── install.sh           (pre-install hook)
├── post-fs-data.sh      (early boot hook)
├── service.sh           (late boot hook)
├── system/              (files to place in /system)│   └── app/MyApp.apk
└── common/              (common files)
    └── system.prop      (system properties to set)
```

## Quick start

1. Copy `module_template/` → `my_module/`
2. Edit `module.prop` with your module name
3. Add files to `system/` subdirectory matching target paths
4. Pack as ZIP: `zip -r my_module.zip my_module/`
5. Flash via Magisk app: Modules → Install from storage → my_module.zip

## Examples

### Replace system app
```
my_module/system/app/Calculator/Calculator.apk  → replaces /system/app/Calculator/Calculator.apk
```

### Add custom build property
Edit `common/system.prop`:
```
ro.my.custom.prop=value
```

### Run a command on boot
In `service.sh`:
```bash
/system/bin/some_command &
```

## Testing

```bash
# Install debug build
adb push my_module.zip /sdcard/
# Then flash in Magisk UI

# Check module status
adb shell magisk module list
adb shell ls -la /data/adb/modules/my_module/

# View logs
adb shell tail -f /data/adb/modules/my_module/module.log
```
