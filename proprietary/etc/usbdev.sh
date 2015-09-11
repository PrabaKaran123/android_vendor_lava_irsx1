#!/system/xbin/sh
#
# usbdev.sh
#
# Set USB Device Mode
#

bb=""

# Find busybox so we can use awk to pull out the Hardware string from /proc/cpuinfo.  
if [ -e /bin/busybox ]
then
#        echo Found /bin/busybox
        bb="/bin/busybox"
elif [ -e /system/xbin/busybox ]
then
#        echo Found /system/xbin/busybox
        bb="/system/xbin/busybox"
else
        echo NO busybox Found
fi
#echo USBDEV using busybox:$bb

board=`cat /proc/cpuinfo | $bb awk '/^Hardware/ {print $3}'`
pid=0

if [ $board == "Island" ]
then
	pid_base="e7"
else
	pid_base="e6"
fi

shutdown_rndis()
{
	rndis_mode=`cat /sys/class/android_usb/android0/functions`
	case "$rndis_mode" in
		rndis | rndis,adb)
			echo "Shutdown USB RNDIS..."
			/system/bin/sh /system/etc/usb_network.sh stop
			;;
		*)
			;;
	esac

}

# Setting up usb modes by using the kernel's sysfs interface.  This is
# used in LMP builds where there is no Android property service running
setup_usb_3_0()
{
	case "$1" in

		"msc")
			pid="${pid_base}01"
			echo "Enabling MSC Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo mass_storage > /sys/class/android_usb/android0/functions
			echo /dev/block/mmcblk1p1 > /sys/class/android_usb/android0/f_mass_storage/lun0/file
			echo 1 > /sys/class/android_usb/android0/enable
			;;

		"msc_adb"|"msc,adb")
			pid="${pid_base}81"
			echo "Enabling MSC ADB Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo mass_storage,adb > /sys/class/android_usb/android0/functions
			echo /dev/block/mmcblk1p1 > /sys/class/android_usb/android0/f_mass_storage/lun0/file
			echo 1 > /sys/class/android_usb/android0/enable
			;;

		"acm")
			pid="${pid_base}02"
			echo "Enabling ACM ACM Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo acm > /sys/class/android_usb/android0/functions
			echo 2 > /sys/class/android_usb/android0/f_acm/instances
			echo 1 > /sys/class/android_usb/android0/enable
			;;

		"acm_adb"|"acm,adb")
			pid="${pid_base}82"
			echo "Enabling ACM ACM ADB Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo acm,adb > /sys/class/android_usb/android0/functions
			echo 2 > /sys/class/android_usb/android0/f_acm/instances
			echo 1 > /sys/class/android_usb/android0/enable
			;;

		"ptp")
			pid="${pid_base}04"
			echo "Enabling PTP Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo ptp > /sys/class/android_usb/android0/functions
			echo 1 > /sys/class/android_usb/android0/enable
			;;

		"ptp_adb"|"ptp,adb")
			pid="${pid_base}84"
			echo "Enabling PTP ADB Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo ptp,adb > /sys/class/android_usb/android0/functions
			echo 1 > /sys/class/android_usb/android0/enable
			;;

		"mtp")
			pid="${pid_base}08"
			echo "Enabling MTP Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo mtp > /sys/class/android_usb/android0/functions
			echo 1 > /sys/class/android_usb/android0/enable
			;;

		"mtp_adb"|"mtp,adb")
			pid="${pid_base}88"
			echo "Enabling MTP ADB Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo mtp,adb > /sys/class/android_usb/android0/functions
			echo 1 > /sys/class/android_usb/android0/enable
			;;


		"rndis")
			pid="${pid_base}10"
			echo "Enable RNDIS Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo rndis > /sys/class/android_usb/android0/functions
			echo 1 > /sys/class/android_usb/android0/enable
			$bb sh /system/etc/usb_network.sh start
			;;

		"rndis_adb"|"rndis,adb")
			pid="${pid_base}90"
			echo "Enable RNDIS ADB Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo rndis,adb > /sys/class/android_usb/android0/functions
			echo 1 > /sys/class/android_usb/android0/enable
			$bb sh /system/etc/usb_network.sh start
			;;

		"adb")
			pid="${pid_base}80"
			echo "Enabling ADB Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo adb > /sys/class/android_usb/android0/functions
			echo 1 > /sys/class/android_usb/android0/enable
			;;

		"acm_msc"|"acm,msc")
#                   Legacy Modes
			pid="${pid_base}21"
			echo "Enabling ACM ACM MSC Composite Device PID:$pid"
			echo 0 > /sys/class/android_usb/android0/enable
			echo $pid > /sys/class/android_usb/android0/idProduct
			echo acm,mass_storage > /sys/class/android_usb/android0/functions
			echo 2 > /sys/class/android_usb/android0/f_acm/instances
			echo 1 > /sys/class/android_usb/android0/enable
			;;

		"adb_msc")
			echo "Enabling ADB MSC Composite Device PID:0d02"
			echo 0 > /sys/class/android_usb/android0/enable
			echo 0d02 > /sys/class/android_usb/android0/idProduct
			echo mass_storage,adb > /sys/class/android_usb/android0/functions
			echo 1 > /sys/class/android_usb/android0/enable
			;;

		"none")
			echo "No Composite Device"
			echo 0 > /sys/class/android_usb/android0/enable
			;;

	   *)
	echo "Usage $0 {msc|msc_adb|acm|acm_adb|ptp|ptp_adb|mtp|mtp_adb|rndis|rnids_adb|adb|none}" >&2
#	exit 1
		;;
	esac

	return
}

# Setting up usb modes by using Android's Property Service
setup_usb_3_0_android()
{
	case "$1" in

		"msc")
			echo "Enabling MSC only Device"
			setprop sys.usb.config mass_storage
			;;

		"msc_adb"|"msc,adb")
			echo "Enabling MSC and ADB Device"
			setprop sys.usb.config mass_storage,adb
			;;

		"acm")
			echo "Enabling ACM only Device"
			setprop sys.usb.config acm
			;;

		"acm,adb"|"acm_adb")
			echo "Enabling ACM and ADB Device"
			setprop sys.usb.config acm,adb
			;;

		"ptp")
			echo "Enabling PTP onlyDevice"
			setprop sys.usb.config ptp
			;;

		"ptp_adb"|"ptp,adb")
			echo "Enabling PTP and ADB Device"
			setprop sys.usb.config ptp,adb
			;;

		"mtp")
			echo "Enabling MTP onlyDevice"
			setprop sys.usb.config mtp
			;;

		"mtp_adb"|"mtp,adb")
			echo "Enabling MTP and ADB Device"
			setprop sys.usb.config mtp,adb
			;;

		"mtp,acm")
			echo "Enabling ACM and MTP Device"
			setprop sys.usb.config mtp,acm
			;;

		"mtp,acm,adb")
			echo "Enabling ACM, MTP and ADB Device"
			setprop sys.usb.config mtp,acm,adb
			;;

		"ss_mtp_acm_adb")
			echo "Enabling Samsung USB Mode"
			setprop sys.usb.config ss_mtp_acm_adb
                        ;;

		"ss_mtp_acm")
                        echo "Enabling Samsung USB Mode"
                        setprop sys.usb.config ss_mtp_acm
                        ;;

		"rndis")
			echo "Enabling RNDIS only Device"
			setprop sys.usb.config rndis
			setprop net.setcfg.rndis0 up
			;;

		"rndis_adb"|"rndis,adb")
			echo "Enabling RNDIS and ADB Device"
			setprop sys.usb.config rndis,adb
			setprop net.setcfg.rndis0 up
			;;

		"adb")
			echo "Enabling ADB Only Device"
			setprop sys.usb.config adb
			;;

		"audio"|"audio_source")
			echo "Enabling Audio Source Device"
			setprop sys.usb.config audio_source
			;;
		"audio,adb"|"audio_source,adb")
			echo "Enabling Audio Source and ADB Device"
			setprop sys.usb.config audio_source,adb
			;;

		"ncm")
                        echo "Enabling NCM only Device"
                        setprop sys.usb.config ncm
                        setprop net.setcfg.ncm0 up
                        ;;

                "ncm_adb"|"ncm,adb")
                        echo "Enabling NCM and ADB Device"
                        setprop sys.usb.config ncm,adb
                        setprop net.setcfg.ncm0 up
                        ;;

		"acm_msc")
#          Legacy Modes
			 pid="${pid_base}21"
			 echo "Enabling ACM ACM MSC Composite Device PID:$pid"
			 echo 0 > /sys/class/android_usb/android0/enable
			 echo $pid > /sys/class/android_usb/android0/idProduct
			 echo acm,mass_storage > /sys/class/android_usb/android0/functions
			 echo 2 > /sys/class/android_usb/android0/f_acm/instances
			 echo 1 > /sys/class/android_usb/android0/enable
			 ;;

		"adb_msc")
			 echo "Enabling ADB MSC Composite Device PID:0d02"
			 echo 0 > /sys/class/android_usb/android0/enable
			 echo 0d02 > /sys/class/android_usb/android0/idProduct
			 echo mass_storage,adb > /sys/class/android_usb/android0/functions
			 echo 1 > /sys/class/android_usb/android0/enable
			 ;;

		"none")
			 echo "No Composite Device"
			 echo 0 > /sys/class/android_usb/android0/enable
			 ;;

	   *)
	echo "Usage $0 {msc|msc_adb|acm|acm_adb|ptp|ptp_adb|mtp|mtp_adb|ss_mtp_acm_adb|ss_mtp_acm|rndis|rnids_adb|ncm|ncm_adb|adb|none}" >&2
#	exit 1
		;;
	esac

	return
}

#Begin the actual script
#Basic Operation
# - Shutdown rndis network if it was previously used
# - Set new usb mode using either sysfs or Android property service

shutdown_rndis
bootmode=`getprop ro.bootmode`

case "$bootmode" in
	"lmp")
		echo "USBDEV: use LMP"
		setup_usb_3_0 $1
		;;
	*)
		echo "USBDEV: use Android]"
		setup_usb_3_0_android $1
		;;
	
esac


