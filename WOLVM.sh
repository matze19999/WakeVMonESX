#!/bin/sh

# Power On VM if powered off

ID="`vim-cmd vmsvc/getallvms | grep ${1}`"

if [ ${?} = 1 ]; then
    echo "VM ${1} not found!"
    exit 1
fi

ID="`echo ${ID} | cut -d ' ' -f 1`"
powerstate="`vim-cmd vmsvc/power.getstate ${ID}`"

echo ${powerstate} | grep "Powered off"
if [ ${?} = 0 ]; then
    echo "`vim-cmd vmsvc/power.on ${ID}` ${1}"
    #echo "VM ${1} powered on!"
    exit 0
elif [ ${?} = 1 ]; then
    echo "VM ${1} already powered on!"
    exit 0
fi
exit 0