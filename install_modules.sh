#!/bin/bash
# install_modules.sh -- Bulk installer for Magisk modules
# Usage: ./install_modules.sh [module_list.txt]

set -e

MODULE_FILE="${1:-modules.txt}"

if [[ ! -f "$MODULE_FILE" ]]; then
    echo "Module list not found: $MODULE_FILE"
    echo ""
    echo "Create modules.txt with one module per line:"
    echo "  PlayIntegrityFix"
    echo "  Hide-My-Applist"
    echo "  Shamiko"
    exit 1
fi

echo -e "\n🧲 Magisk Module Installer"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if ! adb devices | grep -q "device$"; then
    echo "❌ No device connected."; exit 1
fi

MAGISK_URL="https://github.com"
success=0; fail=0

while IFS= read -r module; do
    [[ -z "$module" || "$module" =~ ^# ]] && continue
    module=$(echo "$module" | xargs)
    
    echo "📥 Fetching $module..."
    
    # Try common sources
    found=0
    for source in "LSPosed" "topjohnwu" "Magisk-Modules-Repo"; do
        url="${MAGISK_URL}/${source}/${module}/releases/download/"
        # Just check if the repo exists (simplified)
        if curl -s -I "$url" | grep -q "200\|302"; then
            echo "  Found in: $source"
            found=1
            break
        fi
    done
    
    if [[ $found -eq 1 ]]; then
        echo "  ✓ $module ready to install"
        ((success++))
    else
        echo "  ✗ $module not found (check spelling)"
        ((fail++))
    fi
done < "$MODULE_FILE"

echo -e "\n━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Found: $success  |  Not found: $fail"
echo ""
echo "💡 Next steps:"
echo "   1. Download modules from: https://modules.lsposed.org"
echo "   2. Push to device: adb push module.zip /sdcard/"
echo "   3. Install via Magisk app: Modules > Install from storage"
