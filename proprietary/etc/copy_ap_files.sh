#!/bin/sh
PRELOAD_DEST=/data/app
PRELOAD_SOURCE=/system/preloadapp
PRELOAD_FLAG=${PRELOAD_DEST}/.preloadAppfiles
PROP_FILE=/system/build.prop
FINGERPRINT=ro.build.fingerprint

NEED_COPY="true"
##get current version
CURRENT_OS_VERSION=`/system/bin/cat $PROP_FILE | grep $FINGERPRINT`
##get prev version
CURRENT_APP_VERSION=`/system/bin/cat $PRELOAD_FLAG | grep $FINGERPRINT`
if [ $CURRENT_OS_VERSION == $CURRENT_APP_VERSION ]; then
	NEED_COPY="false"
fi


echo `date` $CURRENT_OS_VERSION $CURRENT_APP_VERSION $NEED_COPY

if [ $NEED_COPY == "true" ]; then
	if [ ! -d ${PRELOAD_DEST} ]; then
		mkdir -p ${PRELOAD_DEST}
	fi
	cp -f ${PRELOAD_SOURCE}/* /data/app
	chmod 0644 ${PRELOAD_DEST}/*

	echo $CURRENT_OS_VERSION > ${PRELOAD_FLAG}
fi

