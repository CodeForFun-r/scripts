#!/usr/bin/env bash
present=$(lsusb | grep 'First word of your hard disk name')
if [ -z "$present" ];
then
	exit
else
     disklabel=$(lsblk --output NAME,VENDOR,MODEL,MOUNTPOINT,LABEL | grep 'First word of your hard disk name' | awk '{print $1}')
     folderpath=$(lsblk --output NAME,VENDOR,MODEL,MOUNTPOINT,LABEL | grep $disklabel$(echo '1') | grep '/media' | awk '{print $2}')
	rsync -czvr --progress /home/name/ $folderpath/$(echo 'name')
fi

