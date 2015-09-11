#!/bin/sh

img_srcs[0]=/dev/block/mmcblk0p6
img_srcs[1]=/dev/block/mmcblk0p7
img_srcs[2]=/dev/block/mmcblk0p8
img_srcs[3]=/dev/block/mmcblk0p9
img_srcs[4]=/dev/block/mmcblk0p10
img_srcs[5]=/dev/block/mmcblk0p11
img_srcs[6]=/dev/block/mmcblk0p12
img_srcs[7]=/dev/block/mmcblk0p14
img_srcs[8]=/dev/block/mmcblk0p15

img_dsts[0]=/data/firmware/image/sysparm_ind.img
img_dsts[1]=/data/firmware/image/sysparm_dep.img
img_dsts[2]=/data/firmware/image/parm_spml_ind.img
img_dsts[3]=/data/firmware/image/parm_spml_dep.img
img_dsts[4]=/data/firmware/image/umts_cal.img
img_dsts[5]=/data/firmware/image/cp_boot.img
img_dsts[6]=/data/firmware/image/cp_image.img
img_dsts[7]=/data/firmware/image/dsp_pram.img
img_dsts[8]=/data/firmware/image/dsp_dram.img


# Copies src file into dst file, if the contents of dst
# don't match src.
#
# Arg 1: dst
# Arg 2: src
# Arg 3: number of bytes to compare
function copy_img() {
	dst=$1
	src=$2
	cmp_bytes=$3

	cmp -n $cmp_bytes $src $dst
	if test $? -eq 0 ; then
		echo $dst already exists
	else
		echo busybox cp $src $dst
		busybox cp $src $dst
	fi
}


# Verify the first 1024 bytes of each image.
hdr_bytes=1024

indices="0 1 2 3 4 5 6 7 8"

for index in $indices; do
	copy_img ${img_dsts[$index]} ${img_srcs[$index]} $hdr_bytes
done
