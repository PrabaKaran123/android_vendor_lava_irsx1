#!/system/bin/sh
#
# usb_network.sh
#
# Setup USB tethering network
#
# All these commands require root access to run


echo "Network Setup Param:$1"

case "$1" in
	prop)
		mode=`getprop net.setcfg.rndis0`
		;;
	udhcpd|dnsmasq|none)
		setprop persist.brcm.ase.dhcp $1
		mode="skip"
		;;
	*)
		mode=$1
		;;
esac


case "$mode" in
	start|up|"")
		/system/bin/ifconfig rndis0 192.168.42.129 netmask 255.255.255.0 up
		/system/bin/iptables -A POSTROUTING -t nat -j MASQUERADE
		echo 1 > /proc/sys/net/ipv4/ip_forward
		/system/bin/iptables -A FORWARD -i rmnet0 -o rndis0 -m state --state ESTABLISHED,RELATED -j ACCEPT
		/system/bin/iptables -A FORWARD -i rndis0 -o rmnet0 -m state --state INVALID -j DROP
		/system/bin/iptables -A FORWARD -i rndis0 -o rmnet0 -j ACCEPT

		case `getprop persist.brcm.ase.dhcp` in
			udhcpd)
				echo "Setup DHCP using busybox udhcpd"
				killall udhcpd
				busybox udhcpd /system/etc/udhcpd.conf
				;;
			dnsmasq)
				echo "Setup DHCP using dnsmasq"
				/system/bin/dnsmasq --no-resolv --no-poll --dhcp-authoritative user=dhcp --no-negcache --dhcp-range=net:rndis0,192.168.42.130,192.168.42.130,12h --dhcp-leasefile=/data/misc/dnsmasq.leases --pid-file=/data/misc/dnsmasq.pid --server 8.8.8.8 --server 4.4.4.4
				;;
			*)
				echo "Setup RNDIS without DHCP"
				;;
		esac

		;;

	start_ncm|ncm)
                /system/bin/ifconfig ncm0 192.168.42.129 netmask 255.255.255.0 up
                /system/bin/iptables -A POSTROUTING -t nat -j MASQUERADE
                echo 1 > /proc/sys/net/ipv4/ip_forward
                /system/bin/iptables -A FORWARD -i rmnet0 -o ncm0 -m state --state ESTABLISHED,RELATED -j ACCEPT
                /system/bin/iptables -A FORWARD -i ncm0 -o rmnet0 -m state --state INVALID -j DROP
                /system/bin/iptables -A FORWARD -i ncm0 -o rmnet0 -j ACCEPT

		case `getprop persist.brcm.ase.dhcp` in
			udhcpd)
				echo "Setup DHCP using busybox udhcpd"
				killall udhcpd
				busybox udhcpd /system/etc/udhcpd_ncm.conf
				;;
			dnsmasq)
				echo "Setup DHCP using dnsmasq"
				/system/bin/dnsmasq --no-resolv --no-poll --dhcp-authoritative user=dhcp --no-negcache --dhcp-range=net:ncm0,192.168.42.130,192.168.42.130,12h --dhcp-leasefile=/data/misc/dnsmasq.leases --pid-file=/data/misc/dnsmasq.pid --server 8.8.8.8 --server 4.4.4.4
				;;
			*)
				echo "Setup DHCP using busybox udhcpd"
				killall udhcpd
                                busybox udhcpd /system/etc/udhcpd_ncm.conf
				;;
		esac

		;;

	stop|down)
		echo "Network cleanup Dnsmasq"
		killall dnsmasq
		echo 0 > /proc/sys/net/ipv4/ip_forward
		iptables --flush
		iptables --table nat --delete-chain
		iptables --table nat --flush
		iptables --delete-chain
		;;
	skip)
		;;

	*)
		echo "Unsupported Network Setup"
esac

