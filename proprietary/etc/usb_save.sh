#!/system/bin/sh
#
# usb_save.sh
#
# Save the current usb setting as persistent
#

mode=`getprop sys.usb.config`
echo "Saving USB mode:$mode"
setprop persist.sys.usb.config $mode

