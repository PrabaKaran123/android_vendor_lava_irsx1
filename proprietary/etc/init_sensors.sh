#!/system/bin/sh

# create dir to store sensors configuration
if ! [ -e "/data/misc/sensors" ]; then
	mkdir /data/misc/sensors
	chown system:system /data/misc/sensors
fi


# set permission for AL3006 and BMP18X sensor device files
for i in /sys/class/input/input* ;
do
	local devName=`cat "$i/name"`
	if [ "$devName" == "BMP18X" ] ; then
		chown system "$i/temp_enable"
		chown system "$i/temp_poll_delay"
		chown system "$i/pressure_enable"
		chown system "$i/pressure_poll_delay"
	elif [ "$devName" == "geomagnetic" ] ; then
		chown system "$i/active"
		chown system "$i/interval"
	fi
done

#bma222
chmod 0666 /dev/bma222_accl
chown system:system /dev/bma222_accl
chown system:system /sys/bus/i2c/devices/2-0018/offset
#for tmd2771x
	chmod /dev/taos 0666
	chown system:system /dev/taos
	chown system:system /sys/ponkey/hall_flag

#isl290xx file sys interface,light/approximate
chown system:system /dev/isl290xx
chmod 0666 /dev/isl290xx
chown system:system /sys/devices/platform/3e018000.i2c/i2c-2/2-0044/prox_enable
chown system:system /sys/devices/platform/3e018000.i2c/i2c-2/2-0044/als_enable
chown system:system /sys/devices/platform/3e018000.i2c/i2c-2/2-0044/prox_cali
chown system:system /sys/devices/platform/3e018000.i2c/i2c-2/2-0044/offset
