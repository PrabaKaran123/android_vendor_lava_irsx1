#!/system/bin/sh
#
# usb_tether.sh
#
# Start/Stop USB tethering
#

echo entering $0 ...

echo "USB Tethering ..."

setup_rndis()
{
	rndis_mode=`cat /sys/class/android_usb/android0/functions`
	case "$rndis_mode" in
		rndis | rndis,adb)
			echo "USB RNDIS is already running..."
			;;
		*)
			echo "Starting RNDIS...."
			sh /system/etc/usbdev.sh $1
			;;
	esac
}

# real action
case "$1" in
	start|start_bb|"")
		echo "Starting USB tethering..."
		setup_rndis rndis
		;;

	start_adb)
		echo "Starting USB tethering with ADB..."
		setup_rndis rndis,adb
		;;

	start_nb)
		# start USB tethering without busybox
		echo "Starting USB tethering..."
		setprop sys.usb.config rndis,adb
		sh /system/etc/usb_network.sh start
		;;

	 ncm)
                echo "Starting USB tethering over NCM..."
                setprop sys.usb.config ncm
		setprop net.setcfg.ncm0 up
                sh /system/etc/usb_network.sh start_ncm
               ;;

	ncm_adb)
                echo "Starting USB tethering over NCM (ncm,adb)..."
                setprop sys.usb.config ncm,adb
		setprop net.setcfg.ncm0 up
                sh /system/etc/usb_network.sh start_ncm
               ;;

	stop)
		echo "Stopping USB tethering..."
		sh /system/etc/usb_network.sh stop
		;;

	stop_nb)
		echo "Stopping USB tethering... restoring to default USB mode."
		sh /system/etc/usb_network.sh stop
		sleep 1
		setprop sys.usb.config mtp,adb
		;;

	*)
		echo "Usage $0 {start|start_adb|start_nb|start_bb|ncm|ncm_adb|stop|stop_nb}" >&2
		exit 1
		;;
esac

echo leaving $0 ...

