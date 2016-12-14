#!/bin/bash
# copyright 2016, teamexynos5420, nvertigo
# under the terms of gpl2 copyleft


REALMKBOOTIMG=${ANDROID_HOST_OUT}/bin/mkbootimg
TE_BOOTIMG=${OUT}/boot.img

if [ -e ${REALMKBOOTIMG} ]; then
    ${REALMKBOOTIMG} $*
else
    echo "${REALMKBOOTIMG} not found or not executable."
    exit 1
fi

if [ -f ${TE_BOOTIMG} ]; then
    echo "SEANDROIDENFORCE" >> ${TE_BOOTIMG}
else 
    echo "${TE_BOOTIMG} not found."
    exit 2
fi
