#!/bin/sh

VENDOR=huawei
DEVICE=u9508

BASE=vendor/$VENDOR/$DEVICE/proprietary
WHEREPF=device/$VENDOR/$DEVICE

rm -rf $BASE/*

for FILE in `cat $WHEREPF/proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    adb pull /system/$FILE $BASE/$FILE
done

./$WHEREPF/setup-makefiles.sh
