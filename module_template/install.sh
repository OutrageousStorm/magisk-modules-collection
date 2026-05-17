#!/sbin/sh
MODDIR=${0%/*}
# Called during module installation
# Can do pre-installation validation here

# Validate dependencies
if [ ! -d "/system/app" ]; then
  abort "System partition not found"
fi

ui_print "Installing..."
