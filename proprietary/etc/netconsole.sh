#!/system/bin/sh
#
# netconsole.sh
#
# initialize netconsole parameters
#

product=`getprop ro.build.product`
case "$product" in
	tahiti)
		dev_name=`cat /config/netconsole/rndis0/dev_name`
		case "$1" in
			start)
				case "$dev_name" in
					eth0)
						echo "Netconsole's not been intialized. Initializing..."
						echo rndis0 > /config/netconsole/rndis0/dev_name
						echo 192.168.42.129 > /config/netconsole/rndis0/local_ip
						echo 255.255.255.255 > /config/netconsole/rndis0/remote_ip
						echo 5042 > /config/netconsole/rndis0/local_port
						echo 5042 > /config/netconsole/rndis0/remote_port
						echo 1 > /config/netconsole/rndis0/enabled
						;;
					rndis0)
						echo "Netconsole's been intialized..."
						echo 1 > /config/netconsole/rndis0/enabled
						;;
				esac
				;;
			*)
				# added for engineering use
				echo 0 > /config/netconsole/rndis0/enabled
				;;
		esac
		;;
esac
