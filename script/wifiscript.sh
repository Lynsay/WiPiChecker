#!/bin/bash
#File: wifiscript.sh
#Version: 1.0
#Date: June 2014
#Author: Lynsay A. Shepherd

#Description: Script to check wifi status on the Raspberry Pi.  If the script cannot ping Google, the wifi interface has gone down.
 
TESTIP=8.8.8.8
 
ping -c4 ${TESTIP} > /dev/null
 
if [ $? != 0 ]
then
    logger -t $0 "Your wifi has gone down- run ifup"
    ifdown --force wlan0
    ifup wlan0
else
        logger -t $0 "Your wifi is ok just now"
fi
